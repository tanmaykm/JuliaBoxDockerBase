# Base Dockerfile with Julia 0.3 release
# Version:6

FROM tanmaykm/juliaboxcore:6

MAINTAINER Tanmay Mohapatra

# Add the Julia PPA
RUN apt-get install -y -o DPkg::Options::=--force-confold apt-utils python-software-properties software-properties-common \
    && apt-add-repository -y ppa:staticfloat/juliareleases \
    && add-apt-repository -y ppa:staticfloat/julia-deps \
    && apt-get update \
    && apt-get install -y julia=0.3.1~trusty1 \
    && apt-get clean

