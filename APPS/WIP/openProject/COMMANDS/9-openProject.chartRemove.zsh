#!/usr/bin/env zsh
###
##
# * REMOVAL
##
###
helm uninstall openproject
kubectl delete namespace openproject
kubectl delete pv openproject-pv
