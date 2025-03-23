#!/bin/bash
log_info() { echo -e "\e[34m[INFO   ]\e[0m $1"; }
log_success() { echo -e "\e[32m[SUCCESS]\e[0m $1"; }
log_warn() { echo -e "\e[33m[WARN   ]\e[0m $1"; }
log_error() { echo -e "\e[31m[ERROR  ]\e[0m $1"; }
check_root() { [ "$EUID" -ne 0 ] && echo "Bitte als root ausführen!" && exit 1; }
