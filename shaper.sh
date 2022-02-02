#!/bin/bash

for i in `ip a | grep veth | awk '{print $2}' | tr ':' ' ' | tr '@' ' ' | awk '{print $1}'`
do
echo "wondershaper $i 20480 20480".
wondershaper $i 20480 20480
done
