## Encrypt and Decrypt using Bash:

### Pay attention to the version of openssl before running this, some versions (lower than 1.1.1) don't support certain params, like pbkdf.
### I've fallen to this before, thankfully someone pointed it out here. https://unix.stackexchange.com/questions/634457/how-can-i-hide-encrypt-my-files-from-another-user-using-the-same-server/634477#634477

find odtFiles/ -name "*.odt" -type f -exec openssl aes-256-cbc -base64 -pbkdf2 -in {} -out {}.enc \; 

To encrypt a file (in the example below, denoted F);
(e.g with openssl, using aes - cbc)

aes (Advanced Encryption Standard) 
cbc (Cipher Block Chaining)

    # openssl aes-256-cbc -base64 -pbkdf2 -in F

### Optionally, one could use -iter `<integer>` to add a extra layer of security.

   ### Note: use >= 10000 iterations. ###

  #  openssl aes-256-cbc -base64 -pbkdf2 -iter 10000 -in F

## Decrypt:

  #  cat file.enc | openssl aes-256-cbc -base64 -pbkdf2 -d

##  To encrypt multiple files

#### E.g to encrypt all **files ending with *.odt*, in the folder *odtFiles* with a unique password 
# (asked for interactively - entered each time) and output the encrypted files to < whatever file name it was > .enc:**

#    find odtFiles/ -name "*.odt" -type f -exec openssl aes-256-cbc -base64 -pbkdf2 -in {} -out {}.enc \;
