#!/bin/bash

N="Greetings folks!"
if [[ $N == *+(folks)* ]]
then
  echo "Matches bash's extended glob patterns"
fi
