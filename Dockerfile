FROM ubuntu:16.04
MAINTAINER Neozaru <neozaru@mailoo.org>

RUN apt-get update

# Main Deps
RUN apt-get install -y git g++ libssl-dev automake cmake autoconf libtool build-essential

# Boost deps
RUN apt-get install -y libboost-dev libboost-thread-dev libboost-filesystem-dev libboost-iostreams-dev libboost-program-options-dev libboost-signals-dev libboost-context-dev libboost-coroutine-dev libboost-test-dev libboost-locale-dev

ADD build_graphene.sh .
RUN chmod +x build_graphene.sh
RUN ./build_graphene.sh

