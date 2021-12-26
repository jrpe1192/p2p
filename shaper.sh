#!/bin/bash

for i in `ip a | grep veth | awk '{print $2}' | tr ':' ' ' | tr '@' ' ' | awk '{print $1}'`
do
echo "wondershaper $i 2048 2048".
wondershaper $i 2048 2048
done
