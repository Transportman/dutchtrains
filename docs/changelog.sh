#!/bin/sh

#Create list of constants and variables
hg log -r 653:tip --template '- {desc}\n' | sort > changelog_raw.txt
