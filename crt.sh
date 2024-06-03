#!/bin/bash

echo "[+] Scrap Subdomains From CRT.SH[+]"
curl 'https://crt.sh/?q=%.'$1'&output=json' | jq -r '.[].name_value' | grep -v '*' | sort | uniq