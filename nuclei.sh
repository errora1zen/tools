echo "[+]------ Starting Nuclei Project Discovery ------[+]"

# Nuclei Subdomain Scan
echo "[+] Scanning Subdomains [+]"
nuclei -l ~/scripts/target/alive.txt -t ~/nuclei-templates/cves/ -t ~/nuclei-templates/vulnerabilities -t ~/nuclei-templates/generic-detections -t ~/nuclei-templates/security-misconfiguration -t ~/nuclei-templates/tokens -t ~/nuclei-templates/default-credentials -t ~/nuclei-templates/panels -t ~/nuclei-templates/fuzzing -t ~/nuclei-templates/subdomain-takeover -t ~/nuclei-templates/payloads -t ~/nuclei-templates/misc -o ~/scripts/target/nuclei_subdomains.txt

# Nuclei WaybackUrls Scan
#echo "[+] Scanning WaybackUrls [+]"
#nuclei -l ~/scripts/target/waybackurls.txt -t ~/nuclei-templates/cves/ -t ~/nuclei-templates/payloads -t ~/nuclei-templates/vulnerabilities -t ~/nuclei-templates/generic-detections -o ~/scripts/target/nuclei_waybackurls.txt