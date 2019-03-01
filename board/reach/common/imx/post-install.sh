#!/bin/bash

echo "Reach Post Install Script"

PART_CONFIG=$(grep REACH_RELEASE $BR2_CONFIG)
PART_NUM=${PART_CONFIG#*=}
PART_NUM_STRIP=$(echo ${PART_NUM} | sed 's/^"\(.*\)"$/\1/')

echo "Release Number: ${PART_NUM_STRIP}"

echo ${PART_NUM_STRIP} > ${TARGET_DIR}/etc/reach-release
