#!/usr/bin/env zsh
###
##
# * REMOVAL
##
###
helm uninstall traefik
kubectl delete namespace traefik
kubectl delete pv traefik-pv
