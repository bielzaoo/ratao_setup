#!/bin/bash

echo "--------------------------------------------------------------"
echo "

░▒▓███████▓▒░   ░▒▓██████▓▒░  ░▒▓████████▓▒░  ░▒▓██████▓▒░
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░
░▒▓███████▓▒░  ░▒▓████████▓▒░    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░      ░▒▓██████▓▒░


"
echo "--------------------------------------------------------------"

# Creating testing
mkdir temp && cd temp

# subfidner
echo "[+] Installing subfinder..."
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest 1>/dev/null
sudo mv ~/go/bin/subfinder /opt/tools

# assetfinder
echo "[+] Installing assetfinder..."
wget https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz
tar xzf assetfinder-linux-amd64-0.1.1.tgz
sudo mv ./assetfinder /opt/tools

# anew
echo "[+] Installing anew..."
go install github.com/tomnomnom/anew@latest 1>/dev/null
sudo mv ~/go/bin/anew /opt/tools


# gau
echo "[+] Installing GAU..."
go install github.com/tomnomnom/anew@latest 1>/dev/null
sudo mv ~/go/bin/gau /opt/tools


# httpx
echo "[+] Installing httpx..."
go install github.com/projectdiscovery/httpx/cmd/httpx@latest 1>/dev/null
sudo mv ~/go/bin/httpx /opt/tools


# httprobe
echo "[+] Installing httprobe..."
go install github.com/tomnomnom/httprobe@latest 1>/dev/null
sudo mv ~/go/bin/httprobe /opt/tools


# amass
echo "[+] Installing AMASS..."
CGO_ENABLED=0 go install github.com/owasp-amass/amass/v5/cmd/amass@main 1  > /dev/null
sudo mv ~/go/bin/amass /opt/tools

# ffuf
echo "[+] Installing ffuf..."
go install github.com/ffuf/ffuf/v2@latest 1>/dev/null
sudo mv ~/go/bin/ffuf /opt/tools

# shodan
echo "[+] Installing shodan..."
pip install -U --user shodan --break-system-packages 1>/dev/null

# sublist3r
echo "[+] Installing sublist3r..."
git clone https://github.com/aboul3la/Sublist3r.git 1>/dev/null
sudo mv sublist3r /opt/tools

# findomain
echo "[+] Installing findomain..."
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-aarch64.zip -s
unzip findomain-aarch64.zip 1>/dev/null
chmod +x findomain
rm findomain-aarch64.zip
sudo mv findomain /opt/tools/findomain

# waybackurls
echo "[+] Installing waybackurls..."
go install github.com/tomnomnom/waybackurls@latest 1>/dev/null
sudo mv ~/go/bin/waybackurls /opt/tools/waybackurls

# crt.sh
echo "[+] Installing crt.sh..."
wget https://raw.githubusercontent.com/tdubs/crt.sh/master/crt.sh 1>/dev/null
chmod +x crt.sh
sudo mv crt.sh /opt/tools/crt.sh

## Directory
# dirsearch
echo "[+] Installing dirsearch..."
git clone https://github.com/maurosoria/dirsearch.git --depth 1 1>/dev/null
sudo mv dirsearch/ /opt/tools/

# removig temp directory
cd .. && rm -rf ./temp