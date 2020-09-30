#!/bin/bash

set -e
echo "Downloading DAMSM for bird"
gdown --id "1GNUKjVeyWYBJ8hEU-yrfYQpDOkxEyP3V" --output DAMSMencoders/birds.zip 
unzip DAMSMencoders/birds.zip -d DAMSMencoders
echo "Downloading AttnGAN for bird"
gdown --id 1lqNG75suOuR_8gjoEPYNp8VyT_ufPPig --output models/bird_AttnGAN2.pth
echo "Downloading AttnDCGAN for bird"
gdown --id 19TG0JUoXurxsmZLaJ82Yo6O0UJ6aDBpg --output models/bird_AttnDCGAN2.pth
echo "Cleaning up"
rm DAMSMencoders/birds.zip
