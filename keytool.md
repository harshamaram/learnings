# Create and add unsigned keys to KeyStore

`keytool -genkeypair -alias domain-alias  -keyalg RSA -keystore keystore.jks`

# Creates and adds signed keys to keystore
`keytool  -genkey  -alias domain-alias  -keyalg RSA  -keystore keystore.jks`

# Generate CSR file
`keytool  -certreq  -alias domain-alias  -file domain.csr   -keystore keystore.jks`

Generates der file
keytool    -exportcert   -alias domain   -file domain.der   -keystore keystore.jks
