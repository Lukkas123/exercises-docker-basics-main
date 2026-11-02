#!/bin/bash
while true
do
  echo "Input website:"
  read website; echo "Searching.."
  sleep 1; curl http://$website
done
FROM ubuntu:24.04

RUN apt-get update && apt-get install -y curl

COPY script.sh .

CMD ["bash", "./script.sh"]
