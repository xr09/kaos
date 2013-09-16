#!/usr/bin/env bash

# Copyright (c) 2013 Manuel Gutierrez <dhunterkde at gmail>
# License: MIT

# Get the latest version at http://bitbucket.org/xr09/kaos

#------------------------

# import functions
source code/configs.sh
source code/apt.sh
source code/packages.sh
source code/helpers.sh
source code/rainbow.sh


# put your username here to setup sudo
readonly USER_NAME='dhunter'

#------------------------

setup_repo

#------------------------

kprint 'Upgrading To Testing'

apt-update

safe-upgrade

# use dist-upgrade if you want to upgrade to testing or sid
#~ dist-upgrade

#------------------------

kprint 'Installing Packages'

install_all_packages

#------------------------

kprint 'Settings'

setup_sudo

setup_fonts

setup_kde

setup_misc

setup_sensors

hardened_security

exit 0
