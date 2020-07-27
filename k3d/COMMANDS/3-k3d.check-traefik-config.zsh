#!/usr/bin/env zsh 

docker exec -it k3d-`kubectx -c`-server less /var/lib/rancher/k3s/server/manifests/traefik.yaml

