#! /bin/bash

kill -KILL $(ps -eo comm,pid,etimes | awk '{if ($3 > 172800) { print $2}}')
