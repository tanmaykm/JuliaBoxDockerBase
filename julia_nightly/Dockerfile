# Base Dockerfile with Julia nightly
# Version:2

FROM tanmaykm/juliaboxdockerbase:core2

MAINTAINER Tanmay Mohapatra

# Add the Julia PPA
RUN apt-get install -y -o DPkg::Options::=--force-confold apt-utils python-software-properties software-properties-common \
    && apt-add-repository -y ppa:staticfloat/julianightlies \
    && add-apt-repository -y ppa:staticfloat/julia-deps \
    && apt-get update \
    && apt-get install -y julia \
    && apt-get clean

# add juser
RUN groupadd juser \
    && useradd -m -d /home/juser -s /bin/bash -g juser -G staff \
    && echo "export HOME=/home/juser" >> /home/juser/.bashrc

