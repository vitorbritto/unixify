#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# | INITIALIZE PROGRAM                                                         |
# ------------------------------------------------------------------------------

main() {

    case $1 in
        -h | --help ) uify_help $*; exit 0; ;;          # output help
        -V | --version) uify_version $*; exit 0; ;;     # output program version
        -l | --list ) uify_list $*; exit 0; ;;          # list man pages with specific letter
        -v | --view ) uify_view $*; exit 0; ;;          # view specific man page
        -g | --generate ) uify_generate $*; exit 0; ;;  # generate specific man page to PDF
        -e | --explain ) uify_explain $*; exit 0; ;;    # explain a specific command for Unix Shell
        -s | --system ) uify_system $*; exit 0; ;;      # dynamic real-time view of a running system
        -p | --process ) uify_process $*; exit 0; ;;    # view current processes
        -m | --mail ) uify_mail $*; exit 0; ;;          # run a specif command and send an email to admin
        -A | --append ) uify_append $*; exit 0; ;;      # append a new path to global variable PATH
        -P | --prepend ) uify_prepend $*; exit 0; ;;    # prepend a new path to global variable PATH
        -o | --offline ) uify_offline $*; exit 0; ;;    # shutdown the system
        -i | --info ) uify_sys_info $*; exit 0; ;;      # show system info
        * ) e_error "Invalid option!"; exit 1; ;;
    esac

}

# Initialize Script
main $*
