#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# | HELP                                                                       |
# ------------------------------------------------------------------------------

uify_help() {

cat <<EOT

-----------------------------------------------------------------------------
UNIXIFY - General utilities for Unix
-----------------------------------------------------------------------------

-- FIRST OF ALL: ------------------------------------------------------------

Create an alias, like the following one:
alias uify="bash path/to/script/unixify.sh"

-- THEN: --------------------------------------------------------------------

Usage:   $PROGRAM [options] <manpage, letter, command>
Example: $PROGRAM -g telnet -> Will generate a TELNET man page in PDF format.

Options:
         -h, --help        output help
         -V, --version     output program version
         -l, --list        list man pages with specific letter
         -v, --view        view specific man page
         -g, --generate    generate specific man page to PDF
         -e, --explain     explain a specific command for Unix Shell
         -s, --system      dynamic real-time view of a running system
         -p, --process     view current process
         -m, --mail        email an snapshot from current command to admin
         -A, --append      append a new path to global variable PATH
         -P, --prepend     prepend a new path to global variable PATH
         -o, --offline     shutdown the system
         -i, --info        show system info

Copyright (c) Vitor Britto
Licensed under the MIT license.

------------------------------------------------------------------------------

EOT

}
