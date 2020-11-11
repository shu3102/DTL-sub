#!/bin/sh

IFS=''
for f in new5_txt.txt; do
    while read -r GET_http; do 
          read -r User_Agent
          read -r Pragma
          read -r Cache_control
          read -r Accept
        echo "${GET_http#*=},${User_Agent#*=},${Pragma#*=},${Cache_comtrol#*=},${Accept#*=}" >> out_data.csv
    done < "$f"
done
