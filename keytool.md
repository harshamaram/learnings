## Create and add unsigned keys to KeyStore
*This command generates a 2048-bit RSA key pair, under the specified alias (domain), in the specified keystore file (keystore.jks)*  
Input file: None  
`keytool -genkeypair -alias [my-domain-alias]  -keyalg RSA -keystore [my-keystore.jks]`

## Creates and adds a Self-Signed keys to keystore
*Generates a Self-Signed 2048-bit RSA key pair, under the specified alias (domain), in the specified keystore file (keystore.jks)*
Inputs: None  
`keytool  -genkey  -alias [my-domain-alias]  -keyalg RSA -validity [365] -keystore [my-keystore.jks]`

## Generate CSR file
*Generates CSR file, which will be used by CA to generate SSL Certs*  
Input file: my-keystore.jks  
`keytool  -certreq  -alias [my-domain-alias] -file [generated-domain.csr] -keystore [my-keystore.jks]`

## Generates der file
*Generates binary DER-encoded certificate. This is just an encrypted form of CRT file*  
Input file: my-keystore.jks  
`keytool  -exportcert  -alias [my-domain-alias]  -file [generated-domain.der]  -keystore [my-keystore.jks]`

## listing keys
Input file: my-keystore.jks  
`keytool  -list  -keystore [my-keystore.jks]`  
`keytool  -list  -v  -keystore [my-keystore.jks]` 

## Changing the keystore passowrd 
Input file: my-keystore.jks  
`keytool  -storepasswd   -keystore [my-keystore.jks]`

## Delete alias 
Input file: my-keystore.jks  
`keytool -delete  
        -alias domain  
        -keystore [my-keystore.jks]`
## Rename alias
Input file: my-keystore.jks  
`keytool -changealias  
        -alias [my-domain]  
        -destalias [my-new-domain]  
        -keystore [my-keystore.jks]`

