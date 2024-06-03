#!/bin/bash

echo "[+]------ Starting Sub-Subdomains Enumeration ------[+]"

# Collecting sub-subdomains
echo "[+] Enumerating Sub-Subdomains [+]"
altdns -i ~/scripts/target/alive.txt -o data_output -w ~/tools/altdns/words.txt -r -s ~/scripts/target/sub-subdomains.txt

echo "[+] Removing Trash Files [+]"
rm data_output