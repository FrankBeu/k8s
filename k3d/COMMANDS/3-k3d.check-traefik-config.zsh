#!/usr/bin/env zsh 

docker exec -it k3d-k3s-default-server less /var/lib/rancher/k3s/server/manifests/traefik.yaml
