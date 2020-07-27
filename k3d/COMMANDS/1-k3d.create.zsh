#!/usr/bin/env zsh 

if [[ $# -eq 0 ]];then
	NAME_ARG=""
else
	NAME_ARG="--name=$1"
fi

k3d create \
	-x --tls-san="${KUBE_HOST_EXTERNAL_IP}" \
	-x --tls-san="thesym.site" \
        -x --no-deploy="traefik" \
	--publish 80:80 \
	--publish 433:433 \
        ${NAME_ARG} 


# 	# -p 80:80@loadbalancer \
# 	# -p 443:443@loadbalancer
