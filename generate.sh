#!/bin/bash

# Preguntar por el email
echo "Por favor, introduce tu email:"
read email

# Preguntar por el dominio
echo "Por favor, introduce el dominio:"
read dominio

# Ejecutar el comando docker con las variables
docker run -it --rm \
  -v "$(pwd)/certbot/conf:/etc/letsencrypt" \
  -v "$(pwd)/certbot/www:/var/www/certbot" \
  certbot/certbot certonly --webroot --webroot-path=/var/www/certbot --email $email --agree-tos --no-eff-email --expand -d $dominio
  
