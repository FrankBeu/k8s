#!/usr/bin/env zsh
###
##
# * REMOVAL
##
###
helm uninstall loki
kubectl delete namespace loki
