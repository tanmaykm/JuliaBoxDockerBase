# Base Dockerfile with Julia 0.3 release
# Version:2

FROM tanmaykm/juliaboxcore:2

MAINTAINER Tanmay Mohapatra

# Add the Julia PPA
RUN apt-get install -y -o DPkg::Options::=--force-confold apt-utils python-software-properties software-properties-common \
    && apt-add-repository -y ppa:staticfloat/juliareleases \
    && add-apt-repository -y ppa:staticfloat/julia-deps \
    && apt-get update \
    && apt-get install -y julia=0.3.0-1189~ubuntu14.04.1 \
    && apt-get clean

# add juser
RUN groupadd juser \
    && useradd -m -d /home/juser -s /bin/bash -g juser -G staff juser \
    && echo "export HOME=/home/juser" >> /home/juser/.bashrc
