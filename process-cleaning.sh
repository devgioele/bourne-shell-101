#!/bin/sh

# The following shows how to start a process
# and then kill it when the time has come.

sleep 999 &
to_kill=$(echo $!)
echo killig soon
sleep 3
kill "$to_kill"
