#!/bin/bash
chmod +x /$REPONAME/scriptplusconf/start.sh
supervisord -c /$REPONAME/scriptplusconf/supervisord.conf
