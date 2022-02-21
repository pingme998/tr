RPORT=$(echo $PORT)
cat /Jdownloader-2-Rclone-Heroku/scripts/nginxconf |sed "s/THERANDOMPORT/$(cat /PORT)/g" >/etc/nginx/sites-enabled/default
nginx -g 'daemon off;'
