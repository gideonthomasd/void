#!/usr/bin/env bash

#updates=0

actualupdates=$(checkupdates | wc -l)

printf $actualupdates


