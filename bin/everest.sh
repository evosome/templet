#!/bin/sh

git clone https://gitlab.com/everest/agent.git ~/everest_agent

cd ~/everest_agent
mkdir ./conf 
cp everest_agent/agent.conf.default conf/agent.conf

chmod 755 bin/start.sh
