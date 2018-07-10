# learnings

## Generate a Private Key and CSR
[UNIX] openssl req -newkey rsa:2048 -nodes -keyout domain.key -out domain.csr
[ WIN] openssl genrsa -out sample-domain3-pvt.key 2048

CSR file is not public key. It needs to be sent to CA autority to get certificate, which will be public certificate OR public certificate can be generated by self signing. 

## Generate a CSR from an Existing Private Key
[UNIX] openssl req -key domain.key -new -out domain.csr


## Generate a CSR from an Existing Certificate and Private Key
openssl x509 -in domain.crt -signkey domain.key -x509toreq -out domain.csr

## Generate a Self-Signed Certificate
self signed certs displayes a warning that says that the certificate is not trusted by their computer or browser

This command creates a 2048-bit private key (domain.key) and a self-signed certificate (domain.crt) from scratch:

openssl req -newkey rsa:2048 -nodes -keyout domain3-pvt.key -x509 -days 365 -out domain3-pub.crt

The -x509 option tells req to create a self-signed cerificate. The -days 365 option specifies that the certificate will be valid for 365 days. A temporary CSR is generated to gather information to associate with the certificate.

