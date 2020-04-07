# install ssh server

sudo apt install openssh-Server

# login from another machine

ssh lja@111.222.333.444

scp test.txt 192.168.111.222:~/Desktop/test.txt

# ssh using GUI
ssh -X lja@111.222.333.444

#ssh key generation
ssh-keygen \
    -m PEM \
    -t rsa \
    -b 4096 \
    -C "azureuser@myserver" \
    -f ~/.ssh/mykeys/myprivatekey \
    -N mypassphrase

# ssh-keygen = the program used to create the keys
# -m PEM = format the key as PEM
# # -t rsa = type of key to create, in this case in the RSA format
# -b 4096 = the number of bits in the key, in this case 4096
# -C "azureuser@myserver" = a comment appended to the end of the public key file to easily identify it. Normally an email address is used as the comment, but use whatever works best for your infrastructure.
# -f ~/.ssh/mykeys/myprivatekey = the filename of the private key file, if you choose not to use the default name. A corresponding public key file appended with .pub is generated in the same directory. The directory must exist.
# -N mypassphrase = an additional passphrase used to access the private key file.

# copy public key to server
ssh-copy-id -i ~/.ssh/mykey user@host

# add a server to client pc's known_hosts file
ssh-keyscan 140.238.240.228 > .\known_hosts

# test server login 
ssh -i ~/.ssh/mykey user@host

# create a config file in client pc
vim ~/.ssh/config

Host 111.22.3.44
  HostName 111.22.3.44
  User pqr
  IdentityFile ~\.ssh\abc
