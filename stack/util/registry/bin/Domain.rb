require 'open-uri'

class Domain
  attr_reader :dom, :base

  def initialize(dom, base)
    @dom  = `export #{HOST_NAME}=#{base} ; echo #{dom}`.chomp
    @base = base
  end

  def pingable?
    system("ping -c 1 #{dom} > /dev/null 2>&1")
  end

  def getable?
    # exit code 0 is '200' - success!
    # exit code 8 is '404 not found' - this service is alive!
    # (influx returns 404...)
    success_codes = [0, 8]
    system("wget #{dom} -O /dev/null > /dev/null 2>&1")
    result = $?.exitstatus
    success_codes.include?(result)
  end

  def htmlable?
    text = Time.now.to_s

    path = "/.well-known/acme-challenge"
    file = "/test_#{dom.gsub('.','_')}.html"

    lbase = File.expand_path(VOLS + "/html_bt")
    hbase = "http://#{dom}"

    lpath = lbase + path
    lfile = lbase + path + file
    hfile = hbase + path + file

    system "mkdir -p #{lpath}"

    File.open(lfile, "w") {|f| f.puts(text)}

    getable? && path_text(hfile) == text
  end

  def to_s
    dom
  end

  private

  def path_text(url)
    begin
      URI.open(url).read.chomp
    rescue
      "ERROR"
    end
  end
end

