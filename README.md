# learnings

## Generate a Private Key and CSR
`[UNIX] openssl req -newkey rsa:2048 -nodes -keyout domain.key -out domain.csr`
`[ WIN] openssl genrsa -out sample-domain3-pvt.key 2048`

*CSR file is not public key. It needs to be sent to CA autority to generate a public certificate OR self-signed public certificate can be generated.*

## Generate a CSR from an Existing Private Key
`[UNIX] openssl req -key domain.key -new -out domain.csr`

## Generate a CSR from an Existing Certificate and Private Key
`openssl x509 -in domain.crt -signkey domain.key -x509toreq -out domain.csr`

## Generate a Self-Signed Certificate
self signed certs displayes a warning that says that the certificate is not trusted by their computer or browser

### Create self signed cert from scratch
This command creates a 2048-bit private key (domain.key) and a self-signed certificate (domain.crt) from scratch:
`openssl req -newkey rsa:2048 -nodes -keyout domain3-pvt.key -x509 -days 365 -out domain3-pub.crt`

The -x509 option tells req to create a self-signed cerificate. The -days 365 option specifies that the certificate will be valid for 365 days. A temporary CSR is generated to gather information to associate with the certificate.

### Generate a Self-Signed Certificate from an Existing Private Key
`openssl req -key domain3-pvt.key -new -x509 -days 365 -out domain3-pub.crt`

### Generate a Self-Signed Certificate from an Existing Private Key and CSR
`openssl x509 -signkey domain.key -in domain.csr -req -days 365 -out domain.crt`

## Verify a Private Key Matches a Certificate and CSR
`
openssl rsa -noout -modulus -in domain3-pvt.key | openssl md5

openssl x509 -noout -modulus -in domain3-pub.crt | openssl md5

openssl req -noout -modulus -in domain3.csr | openssl md5
`

*If the output of each command is identical there is an extremely high probability that the private key, certificate, and CSR are related.*

## Encrypt a Private Key
`openssl rsa -des3 -in unencrypted.key -out encrypted.key`
Provide passphrase when prompted

## Decrypt Private key
`openssl rsa -in encrypted.key -out decrypted.key`
Provide passphrase when prompted
