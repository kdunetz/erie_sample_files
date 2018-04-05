#!/bin/bash

#IMAGE=kdunetz/it-chatbot:2.0

if [ -z "$IMAGE" ]
then
   echo "Please set environment variables with . ./setenv.sh"  
   exit
fi
IMAGE=kdunetz/it-chatbot:2.0

docker build -t $IMAGE .
docker push $IMAGE 

kubectl set image deployment/$NAME $NAME=$IMAGE -n default

