echo "[+] Starting Bruteforce Subdomains [+]"
ffuf -w ~/wd/assetnote_wordlists/best-dns-wordlist.txt -u https://FUZZ.$1 -v | tee -a ~/scripts/target/subdomainsbf.txt