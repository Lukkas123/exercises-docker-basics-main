#!/bin/bash
while true
do
  echo "Input website:"
  read website; echo "Searching.."
  sleep 1; curl http://$website
done
FROM ubuntu:24.04

WORKDIR /usr/src/app


COPY script.sh .

CMD ["./script.sh"]
