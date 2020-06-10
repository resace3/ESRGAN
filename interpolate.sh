#!/bin/bash

alphas=('.1' '.2' '.3' '.4' '.5' '.6' '.7' '.8' '.9')

for alpha in "${alphas[@]}"; do
   export ALPHA="$alpha"
   command1='python net_interp.py '"$alpha"
   command2='python test.py models/interp_0'"${alpha: -1}"'.pth'
   $command1
   $command2
done
~        
