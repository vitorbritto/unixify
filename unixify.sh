#!/usr/bin/env bash

# -- ABOUT THIS PROGRAM: -------------------------------------------------------------------------------------
#
# Name: unixify.sh
# Author:  Vitor Britto
# Description: This script is a set of general utilities for Unix (based on Bash shell)
#
# -- FIRST OF ALL: -------------------------------------------------------------------------------------------
#
# Create an alias, like the following one:
# alias uify="bash path/to/script/unixify.sh"
#
# -- INSTRUCTIONS: -------------------------------------------------------------------------------------------
#
# Usage:    uify [options] <manpage, letter, command>
# Example:  uify -e "ls -la" -> Explain "ls -la" command
#
# Options:
#           -h, --help        output help
#           -V, --version     output program version
#           -l, --list        list man pages with specific letter
#           -v, --view        view specific man pag
#           -g, --generate    generate specific man page to PDF
#           -e, --explain     explain a specific command for Unix Shell
#           -s, --system      dynamic real-time view of a running system
#           -p, --process     view current process
#           -m, --mail        email an snapshot from current command to admin
#           -A, --append      append a new path to global variable PATH
#           -P, --prepend     prepend a new path to global variable PATH
#           -o, --offline     shutdown the system
#           -i, --info        show system info
#
# ------------------------------------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# | VARIABLES                                                                  |
# ------------------------------------------------------------------------------

VERSION="0.1.1"
PROGRAM="uify"

# Source Lib Files
source ./lib/utils
source ./lib/help
source ./lib/version
source ./lib/menu
source ./lib/main
source ./lib/init













