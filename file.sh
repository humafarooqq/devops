#!/bin/bash

#############################################################
#Author: huma
#date: 7/31/2024
#this script outputs the node health
###############################################################

set -exo pipefail

df -h

free 

top

nproc


