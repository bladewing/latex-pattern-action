# Container image that runs your code
#FROM ghcr.io/xu-cheng/texlive-full:latest
FROM bladewing678/texlive:latest

RUN apt-get install -y python3 python3-pip

RUN pip install pygments


COPY entrypoint.sh /entrypoint.sh

#RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
