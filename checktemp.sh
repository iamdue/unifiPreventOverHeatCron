#!/bin/bash

currentTemp=$(swctrl env show | head -n 1 | tr -dc '0-9')
maxTemp=50

if [ "$currentTemp" -gt "$maxTemp" ];
then
  swctrl fan diagnostic;
fi
