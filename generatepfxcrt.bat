call type server_key.pem server_crt.pem > serverhold.pem
call openssl pkcs12 -export -out server.pfx -in serverhold.pem -name "Dev Self-Signed SSL Certificate"
