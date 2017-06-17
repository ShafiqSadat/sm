#!/bin/bash
while true ; do
  for entr in launch.sh ; do
    entry="${entr/.sh/}"
    tmux kill-session -t $entry
    tmux new-session -d -s $entry "./$entr"
    tmux detach -s $entry
  done
  echo Bots Running!
  sleep 70
done
