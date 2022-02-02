#!/bin/bash

for i in `ip a | grep veth | awk '{print $2}' | tr ':' ' ' | tr '@' ' ' | awk '{print $1}'`
do
echo "wondershaper $i 10240 10240".
wondershaper $i 10240 10240
done
