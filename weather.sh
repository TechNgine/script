#!/bin/bash
echo "------------------"
echo "are you curious about the weather in your city?"
echo "------------------"
echo "**************************"
read -p "Enter your city: " CITY
echo "**************************"
curl "wttr.in/$CITY"
