## Encrypt and Decrypt using Bash:

find odtFiles/ -name "*.odt" -type f -exec openssl aes-256-cbc -base64 -pbkdf2 -in {} -out {}.enc \; 
