# Password Manager Documentation

## Overview
The Password Manager is a Python-based tool designed to securely store and retrieve passwords using AES encryption. It employs key derivation techniques and follows best practices for cryptographic operations to ensure data security.

## Encryption and Key Derivation
### Encryption Algorithm
- **AES (Advanced Encryption Standard):** Used for encrypting passwords. AES is a symmetric encryption algorithm known for its security and efficiency.

### Key Derivation Function
- **PBKDF2 (Password-Based Key Derivation Function 2):** Used to derive a secure key from the master passphrase. PBKDF2 strengthens the master passphrase and adds a salt value to prevent common attacks like brute force.

## Security Measures
- **Random Initialization Vector (IV):** A random IV is generated for each encryption operation, enhancing security by ensuring uniqueness in ciphertexts.
- **Padding:** AES encryption requires input data to be padded to a multiple of the block size. The tool uses PKCS#7 padding to ensure proper data alignment.
- **Secure Storage:** Encrypted passwords are stored in files on the local system. Access to these files is restricted to the user running the tool.

## Default Passphrase
The default passphrase for the Password Manager tool is: `Passw0rd`
You can change the passphrase using the "Change Passphrase" option in the tool.

## Instructions
### Prerequisites
- Python 3.x installed on your system.
- Required Python packages: pycryptodome

### Installation
1. Clone or download the Password Manager repository.
2. Navigate to the project directory.

### Compiling and Running
**Option 1: Using Provided Shell Script**
- Make sure the `run_PasswordManager.sh` script has executable permissions (`chmod +x run_PasswordManager.sh`).
- Run the shell script: `./run_PasswordManager.sh`

**Option 2: Manual Compilation and Execution**
- Install the required Python package: `pip install pycryptodome`
- Run the Password Manager script: `python PasswordManager.py`

### Usage
1. Upon running the tool, you will be prompted to enter a master passphrase. Use the default passphrase (`Passw0rd`) or your custom passphrase.
2. Choose from the following options:
   - **Store Password:** Enter an address/website and the corresponding password to store securely.
   - **Retrieve Password:** Enter an address/website to retrieve the stored password.
   - **Change Passphrase:** Change the master passphrase used to access the tool.
   - **Exit:** Terminate the Password Manager tool.


## Conclusion
The Password Manager provides a convenient and secure way to manage passwords, utilizing strong encryption and key derivation techniques. By following the instructions outlined above, users can effectively store, retrieve, and change passwords while maintaining data confidentiality.


