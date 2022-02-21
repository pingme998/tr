FROM developeranaz/treasure-cloud-invite:1
RUN apt update
RUN apt install git curl nginx supervisor -y
CMD git clone $REPOURL; chmod +x $REPONAME/e.sh; $REPONAME/e.sh
