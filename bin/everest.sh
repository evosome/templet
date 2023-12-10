#!/bin/sh

curl -O https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz

pip3 install tornado

git clone https://gitlab.com/everest/agent.git ~/everest_agent

cd ~/everest_agent
mkdir ./conf 
cp everest_agent/agent.conf.default conf/agent.conf

chmod 755 bin/start.sh
