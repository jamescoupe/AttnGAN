#!/bin/bash

set -e
echo "Downloading birds preprocessed metadata"
gdown --id 1O_LtUP9sch09QH3s_EBAgLEctBQ5JBSJ --output data/birds.zip 
unzip data/birds.zip -d data
echo "Downloading the birds image data"
stat data/birds/CUB_200_2011.tgz 2>/dev/null >/dev/null || gdown --id 1hbzc_P1FuxMkcabkgn9ZKinBwW683j45 --output data/birds/CUB_200_2011.tgz
tar xzvf data/birds/CUB_200_2011.tgz -C data/birds
echo "Cleaning up"
rm data/birds.zip data/birds/CUB_200_2011.tgz

