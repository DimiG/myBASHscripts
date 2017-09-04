#!/usr/bin/env bash
#
# Copyright (c) 2017 Dmitri G. All rights reserved.
#
# Output HELLO message in MAC OS console (other words - do nothing)

# Function Setup
function hello { tput setaf 3; echo -e "HELLO WORLD! ;-)"; tput sgr0; exit 0; }

# Just a greetings :) Call function
hello

