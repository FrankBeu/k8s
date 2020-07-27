#!/usr/bin/env zsh 

##k3d create --volume /home/frank/k3s/k3d/MOUNTS/manifests:/var/lib/rancher/k3s/server/manifests/:ro &&
k3d create \
	-x --tls-san="84.133.249.75" \
	-x --tls-san="thesym.site" \
	--publish 80:80 \
	--publish 433:433 \
##docker cp ../traefik/traefik.yaml k3d-k3s-default-server:/var/lib/rancher/k3s/server/manifests/traefik.yaml

	# -p 80:80@loadbalancer \
	# -p 443:443@loadbalancer
