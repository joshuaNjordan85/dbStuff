# Vault DB Demo
How to do all of this can be referenced [here](https://learn.hashicorp.com/vault/secrets-management/db-root-rotation); the main value is the scripts I've written to abstract the functionality. Hopefully you are using a Mac...otherwise...well...I guess you can convert.

## DOCKER Things
This repo assumes you are using [docker machine](https://docs.docker.com/machine/) on Mac. You will see that I'm using DOCKERHOST as an environment variable. Assuming you have some docker-machine named hashidev, you can assign this environment variable in the following way:
```
export DOCKERHOST=$(docker-machine ip hashidev)
```
To use docker on mac, you will have to evaluate the runtime. Again, assuming your docker-machine name is hashidev, you can evaluate this like so:
```
eval $(docker-machine env hashidev)
```
