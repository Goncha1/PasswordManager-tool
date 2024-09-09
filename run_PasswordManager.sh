#!/bin/bash
clear
if command -v figlet > /dev/null; then
    clear
    figlet "Password Manager"
else
    echo "==== Password Manager ===="
fi
# Check if pycryptodome library is installed
if python -c "import Crypto" &> /dev/null; then
    echo "pycryptodome library is installed."
else
    echo "pycryptodome library not found. Installing..."
    pip install pycryptodome
fi

# Run the password manager tool
python PasswordManager.py

