# start with the base ubuntu image 
FROM ubuntu 

# update the apt repository 
RUN apt update -y 

# install basic packages (ping, ifconfig, etc.)
RUN apt install aptitude net-tools iputils-ping -y -q 

# make the container run indefinately.
# start a bash shell on the container using `docker exec -it <image> bash`
CMD ["sleep", "infinity"]
