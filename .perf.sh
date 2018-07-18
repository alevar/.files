#!/bin/bash

## Script to toggle the CPU governor from powersave to performance and back again ##

query=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)
statement="Permission needed to change CPU governor. Please enter password..."

if [ "$query" == "powersave" ]; then

    xterm -title "Activate \"Performance\" Governor" -class FXTerm -e "echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor"

else

    xterm -title "Activate \"Powersave\" Governor" -class FXTerm -e "echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor"

fi

exit 0