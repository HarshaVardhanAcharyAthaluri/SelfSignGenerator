call set OPENSSL_CONF=./caconfig.cnf
call openssl req -x509 -newkey rsa:2048 -out cacert.pem -outform PEM -days 1825
call openssl x509 -in cacert.pem -out cacert.crt
