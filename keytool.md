## Create and add unsigned keys to KeyStore
`keytool -genkeypair -alias domain-alias  -keyalg RSA -keystore keystore.jks`

## Creates and adds signed keys to keystore
`keytool  -genkey  -alias domain-alias  -keyalg RSA  -keystore keystore.jks`

## Generate CSR file
`keytool  -certreq  -alias domain-alias  -file domain.csr   -keystore keystore.jks`

## Generates der file
`keytool  -exportcert  -alias domain  -file domain.der  -keystore keystore.jks`

## listing keys

`keytool  -list  -keystore keystore.jks`
`keytool  -list  -v  -keystore keystore.jks`

## Changing the keystore passowrd 
`keytool  -storepasswd   -keystore keystore.jks`

## Delete alias 
`keytool -delete 
        -alias domain
        -keystore keystore.jks`
## Rename alias
`keytool -changealias 
        -alias domain 
        -destalias newdomain 
        -keystore keystore.jks`

