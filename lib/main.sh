#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# | MAIN FUNCTIONS                                                             |
# ------------------------------------------------------------------------------

# List man pages with specific letter
uify_list() {
    e_header "Listing man pages with letter: $2"
    ls /usr/share/man/man1/ | egrep ^[$2].* | more
}

# Explain command for Unix
uify_explain() {
    e_header "→ Redirecting"
    open http://explainshell.com/
}

# Generate PDF for specific man page
uify_generate() {
    local pdfdir="$HOME/.manpdf/"

    if [ ! -d "$pdfdir" ]; then
        e_header "Creating PDF directory"
        mkdir -p "$pdfdir"
    fi

    e_header "Generating PDF for man page: $2"

    cd "$pdfdir"
    man -t "$2" | pstopdf -i -o "$2".pdf
    open $pdfdir/"$2".pdf
    e_success "Done!"
}

uify_process() {
    e_header "Listing running processes"
    ps -efl $time
    e_success "Done!"
}

uify_pid() {
    ps aux | grep "$2"
    if [[ "$2" != 0 ]]; then
        e_success "Find $2 process"
    fi
    e_error "No process found"
}

uify_kill() {
    e_header "Killing processes: $2"
    kill -$3 $2
    e_success "Done!"
}

# View of running system
uify_system() {
    e_header "View of running system"
    htop
}

# Send email to system admin
# TODO: try ssmtp package
uify_mail() {
    local log="log"
    local admin=$(whoami)
    local domain="com.br"
    local input="${@:2}"
    e_header "Sending email to system admin"
    "${input}" | mail -s 'Snapshot' "${log}@${admin}.${domain}"
    e_success "Email has been sent!"
}

uify_shutdown() {
    e_header "Shuting down the system"
    sudo shutdown -h now
}


uify_sys_info() {

    local name=$(whoami)
    local os=$(uname)
    local since=$(uptime)
    local memory=$(ps aux -l | sort -nr -k 4 | head -1)
    local cpu=$(ps aux -l | sort -nr -k 3 | head -1)
    local cpustat=$(iostat)

    e_header "--------------------"
    e_header "SYSTEM INFORMATION: "
    e_header "--------------------"
    e_header "User: ${name}"
    e_header "System: ${os}"
    e_header "Uptime: ${since}"
    e_header ""
    e_header "CPU Statitcs:"
    e_header "${cpustat}"
    e_header "High Memory Usage:"
    e_header "$memory"
    e_header "High CPU Usage:"
    e_header "$cpu"
    e_header "--------------------"

}
