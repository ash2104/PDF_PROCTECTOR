#!/bin/bash

echo "[+] Installing pdf_protector..."

# Ensure Python is installed
command -v python3 >/dev/null 2>&1 || {
    echo >&2 "Python3 is not installed. Aborting."; exit 1;
}

# Ensure PyPDF2 is installed
pip3 show PyPDF2 >/dev/null 2>&1 || {
    echo "[*] Installing PyPDF2..."
    pip3 install PyPDF2
}

# Make it executable and move to /usr/local/bin
chmod +x pdf_protector.py
cp pdf_protector.py pdf_protector
chmod +x pdf_protector
sudo mv pdf_protector /usr/local/bin/

echo "[+] Done. You can now use 'pdf_protector <input.pdf> <output.pdf> <password>' from anywhere."
