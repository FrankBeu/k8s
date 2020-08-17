#!/usr/bin/env zsh
###
##
# * REMOVAL
##
###
helm uninstall harbor
kubectl delete namespace harbor
