#!/bin/bash
CONFIG=/config/config.json
log=/bing-rewards/BingRewards/logs/error.log

set -x

echo "Setting Up pip and installing requirements"
pip install --upgrade pip
pip install --no-warn-script-location -r /bing-rewards/BingRewards/requirements.txt
echo "Checking for imported logs"

echo "Making logs To tail"
mkdir /bing-rewards/BingRewards/logs
touch /bing-rewards/BingRewards/logs/cronBing.log
touch /bing-rewards/BingRewards/logs/error.log
cd /bing-rewards/BingRewards
#tail -f /bing-rewards/BingRewards/logs/cronBing.log
