#!/usr/bin/env bash

set -u

printf '%s\n' 'Informasi jaringan dasar (hanya baca)'
printf '\n%s\n' '== Interface dan alamat =='
if command -v ip >/dev/null 2>&1; then
    ip -br addr
else
    printf '%s\n' 'Perintah ip tidak tersedia.'
fi

printf '\n%s\n' '== Route =='
if command -v ip >/dev/null 2>&1; then
    ip route
else
    printf '%s\n' 'Perintah ip tidak tersedia.'
fi

printf '\n%s\n' '== DNS =='
if command -v resolvectl >/dev/null 2>&1; then
    resolvectl status
elif [ -r /etc/resolv.conf ]; then
    cat /etc/resolv.conf
else
    printf '%s\n' 'Informasi resolver tidak tersedia.'
fi