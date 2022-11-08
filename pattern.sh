#!/bin/bash

N="Greetings folks!"
if [[ $N == *+(folks)* ]]
then
  echo "Matches bash's extended glob patterns"
fi

if test $(echo $N | grep -q ".*folks.*")
then
  echo "Matches grep's regex patterns"
fi
