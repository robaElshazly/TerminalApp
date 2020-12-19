#!/bin/bash
#install the necessary gems if you don't have them
gem install bundler
bundle install
#clear the screen to start the app cleaned
clear
# run the app with either 2 parameters or no parameters
if [ $# -eq 2 ] 
then
 ruby main.rb $1 $2
elif [ $# -gt 2 ] || [ $# -eq 1 ]
 then
ruby main.rb $*
else
 ruby main.rb
fi