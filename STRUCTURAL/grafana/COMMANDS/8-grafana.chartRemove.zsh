#!/usr/bin/env zsh
###
##
# * REMOVAL
##
###
helm uninstall grafana
kubectl delete namespace grafana
