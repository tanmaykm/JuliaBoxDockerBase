# Base Dockerfile with Julia nightly
# Version:6

FROM tanmaykm/juliaboxcore:6

MAINTAINER Tanmay Mohapatra

# Add the Julia PPA
RUN apt-get install -y -o DPkg::Options::=--force-confold apt-utils python-software-properties software-properties-common \
    && apt-add-repository -y ppa:staticfloat/julianightlies \
    && add-apt-repository -y ppa:staticfloat/julia-deps \
    && apt-get update \
    && apt-get install -y julia \
    && apt-get clean

