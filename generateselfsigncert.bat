call set OPENSSL_CONF=./localhost.cnf
call openssl req -newkey rsa:2048 -keyout serverkey.pem -keyform PEM -out serverreq.pem -outform PEM
call openssl rsa < serverkey.pem > server_key.pem
