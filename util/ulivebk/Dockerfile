# start with the base ubuntu image 
FROM ghcr.io/livebook-dev/livebook:0.11.1 

# update the apt repository 
RUN apt update -y 

# install basic packages (ping, ifconfig, etc.)
RUN apt install aptitude net-tools iputils-ping -y -q 

# make the container run indefinately.
# see https://stackoverflow.com/questions/60260437/running-a-ubuntu-container-in-background-using-docker-compose
# start a bash shell on the container using `docker exec -it <image> bash`
# CMD ["sleep", "infinity"]
