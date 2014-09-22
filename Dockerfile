# Base Ubuntu Docker file for JuliaBox
# Version:5

FROM stackbrew/ubuntu:trusty

MAINTAINER Tanmay Mohapatra

# Enable the necessary sources and upgrade to latest
RUN apt-get update \
    && apt-get upgrade -y -o DPkg::Options::=--force-confold \
# Install core packages
    && apt-get install -y \
    man-db \
    libc6 \
    libc6-dev \
    build-essential \
    wget \
    file \
    vim \
    screen \
    tmux \
    pkg-config \
    pandoc \
    texlive \
    texlive-latex-extra \
    inotify-tools \
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
# Install additional packages
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

RUN pip install --upgrade PyDrive google-api-python-client jsonpointer jsonschema tornado sphinx pygments nose readline mistune

RUN git clone --recursive https://github.com/tanmaykm/ipython.git; cd ipython; python setup.py install; cd ..; rm -rf ipython

RUN git clone https://github.com/tanmaykm/shellinabox_fork.git; cd shellinabox_fork; ./configure; make install; cd ..; rm -rf shellinabox_fork

