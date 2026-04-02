#!/bin/sh
#################################################################################################################################
#                                                                                                                               #
# Background task started when the alarm activates.                                                                             #
# Running this as a separate task means it can be killed by a reset command. This prevents the scenario where an alarm          #
# condition has been manual reset - but the timeout email still arives a few minutes later.                                     #
#                                                                                                                               #
#################################################################################################################################

tmp=5                                                                                  # default case - ensures something will happen
tmp=$1                                                                                 # grab the command line argument
#echo "Alarm active - duration "$tmp" seconds"                                         # DIAGNOSTIC
pinctrl set 11 dh                                                                      # Set bell port active
pinctrl set 8 dh                                                                       # Set strobe port active
pinctrl set 7 dh                                                                       # Set sound Bomb active
 
sleep ${tmp}                                                                           # setup timeout job
echo "(alarm):(RasPi):timeout" >>/var/www/data/input.txt                               # send timeout command back to alarm service

