#!/bin/bash

# check number of CPUs
cpu_count=$(grep -c ^processor /proc/cpuinfo)
nproc > cpu.txt

# check memory
total_mem=$(grep MemTotal /proc/meminfo | awk '{print $2}')

# convert memory from KB to GB
total_mem_gb=$(awk "BEGIN {printf \"%.2f\n\", $total_mem/1024/1024}")

#check storage
total_storage=$(df -h / | grep /dev |awk '{print $2}')

# Write results to file
echo "Number of CPUs: $cpu_count" > resource.txt
echo "Total Memory: $total_mem_gb" >> resource.txt
echo "Total Storage: $total_storage" >> resource.txt
echo "results saved in resource.txt"
