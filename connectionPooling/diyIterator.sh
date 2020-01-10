##!/usr/bin/env bash
## This script makes an api call to the consul host running in the docker
## environment on the local machine. The idea is to treat this particular script
## as a trigger for building a dynamic secret. It hits the k/v store in consul
## & sets a value as false, then immediately hits the same endpoint and updates
## the value as true. It repeats this behavior according to a passed in argument
## of time.
## ARG $1 how long to run the interval for the script 
while true; \
do consul-template -config="$(pwd)/ctemplate_config.hcl" -once; \
sleep $1; \
done
