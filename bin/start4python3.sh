#!/bin/bash
BIN_DIR=`dirname "$(cd ${0%/*} && echo $PWD/${0##*/})"`
AGENT_HOME=`dirname "$BIN_DIR"`
cd $AGENT_HOME

PID_FILE=agent.pid

if [ -f $PID_FILE ] && [ -f /proc/$(cat $PID_FILE)/status ]; then
   echo "Agent is already running"
else
    PYTHON=/srv/conda/envs/everest/bin/python3
    PYTHONPATH=$(dirname $0)/..:$PYTHONPATH $PYTHON -m everest_agent.start 2>errors.txt $@ &
    echo $! > $PID_FILE
    echo "Agent is started"
fi