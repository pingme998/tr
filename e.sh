#!/bin/bash
chmod +x /$REPONAME/start.sh
supervisord -c /$REPONAME/supervisord.conf
