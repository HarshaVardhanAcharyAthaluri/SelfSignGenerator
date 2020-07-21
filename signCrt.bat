call set OPENSSL_CONF=./caconfig.cnf
call openssl ca -in serverreq.pem -out server_crt.pem
