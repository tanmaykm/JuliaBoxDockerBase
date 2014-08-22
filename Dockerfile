# Base Ubuntu Docker file for JuliaBox
# Version:4

FROM stackbrew/ubuntu:trusty

MAINTAINER Tanmay Mohapatra

# Enable the necessary sources and upgrade to latest
RUN apt-get update \
	&& apt-get upgrade -y -o DPkg::Options::=--force-confold

# Install core packages
RUN apt-get install -y \
	libc6 \
	libc6-dev \
  	build-essential \
  	wget \
  	file \
  	vim \
  	libreadline-dev \
  	libncurses-dev \
  	libpcre3-dev \
  	libgnutls28 \
  	python \
  	python-yaml \
  	python-m2crypto \
  	python-crypto \
  	msgpack-python \
  	python-dev \
  	python-setuptools \
  	supervisor \
  	&& apt-get clean

# Install additional packages
RUN apt-get install -y \
	python-zmq \
	python-jinja2 \
	python-requests \
	python-numpy \
	python-scipy \
	python-matplotlib \
	python-isodate \
	python-git \
	python-pip \
	&& apt-get clean

RUN pip install --upgrade PyDrive google-api-python-client ipython[all]

RUN git clone https://github.com/tanmaykm/shellinabox_fork.git; cd shellinabox_fork; ./configure; make install; cd ..; rm -rf shellinabox_fork

