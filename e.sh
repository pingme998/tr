#!/bin/bash
chmod +x /$REPONAME/scriptplusconf/start.sh
chmod +x /$REPONAME/scriptplusconf/nginx.sh
RPORT=$(echo $PORT)
cat /$REPONAME/scriptplusconf/nginxconf |sed "s/THERANDOMPORT/$RPORT/g" >/etc/nginx/sites-enabled/default
nginx -g 'daemon off;'
supervisord -c /$REPONAME/scriptplusconf/supervisord.conf
