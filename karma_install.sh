#!/usr/bin/env bash

# Copyright (c) 2016 Manuel Gutierrez <dhunterkde at gmail>
# License: MIT

#------------------------

# import functions
source code/configs.sh
source code/apt.sh
source code/packages.sh
source code/helpers.sh
source code/rainbow.sh



#------------------------

setup_repo

#------------------------

apt-update

apt-upgrade


#------------------------

echogreen 'Installing Packages'

install_all_packages

#------------------------

echogreen 'Settings'

setup_fonts

setup_kde

setup_misc

setup_sensors

exit 0
