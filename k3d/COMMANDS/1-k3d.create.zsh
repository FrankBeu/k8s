#!/usr/bin/env zsh 

if [[ $# -eq 0 ]];then
	NAME_ARG=""
else
	NAME_ARG="--name=$1"
fi

k3d create \
	--api-port 64433 \
	--publish 80:80 \
	--publish 443:443 \
	-x --tls-san="${KUBE_HOST_EXTERNAL_IP}" \
	-x --tls-san="thesym.site" \
	-x --no-deploy="traefik" \
	--volume /home/frank/k3s/PERSISTENCE:/PERSISTENCE \
        ${NAME_ARG} 
