RPORT=$(echo $PORT)
cat /$REPONAME/scriptplusconf/nginxconf |sed "s/THERANDOMPORT/$RPORT/g" >/etc/nginx/sites-enabled/default
nginx -g 'daemon off;'
