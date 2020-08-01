#!/usr/bin/env zsh
###
##
# * REMOVAL
##
###
helm uninstall gitea
kubectl delete namespace gitea
kubectl delete pv gitea-pv
