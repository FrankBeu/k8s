#!/usr/bin/env zsh
###
##
# * REMOVAL
##
###
helm uninstall kubernetes-dashboard
kubectl delete namespace kubernetes-dashboard
