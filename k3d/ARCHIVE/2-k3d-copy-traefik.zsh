#!/usr/bin/env zsh 

#docker cp ../traefik/traefik.yaml k3d-k3s-default-server:/var/lib/rancher/k3s/server/manifests/traefik.yaml
docker cp ../traefik/traefik.yaml k3d-`kubectx -c`-server:/var/lib/rancher/k3s/server/manifests/traefik.yaml
