# Container image that runs your code
FROM python:3.6.10-slim
MAINTAINER andy.stevko@brainome.ai

COPY requirements.txt requirements.txt
RUN echo "|--> Install Python3 * requirements" \
    && apt-get --assume-yes update \
    && apt-get --assume-yes install apt-utils python3-dev  python3-pip csh\
    && python3 -m pip install --upgrade pip \
    && python3 -m pip install -r requirements.txt

# Copies your code file from your action repository to the filesystem path `/` of the container
WORKDIR /sys-path
COPY ./sys-path.* ./
COPY ./Makefile ./

RUN chmod +x sys-path.bin

# Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD ["./sys-path.sh"]
