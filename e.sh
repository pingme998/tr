#!/bin/bash
chmod +x /$REPONAME/scriptplusconf/start.sh
chmod +x /$REPONAME/scriptplusconf/nginx.sh
sed -i "s|/$REPONAME|$REPONAME|g"
supervisord -c /$REPONAME/scriptplusconf/supervisord.conf
