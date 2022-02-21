#!/bin/bash
chmod +x /$REPONAME/scriptplusconf/start.sh
chmod +x /$REPONAME/scriptplusconf/nginx.sh
supervisord -c /$REPONAME/scriptplusconf/supervisord.conf
