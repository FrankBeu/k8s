#!/usr/bin/env zsh
###
##
# * REMOVAL
##
###
helm uninstall kratos
kubectl delete namespace kratos
kubectl delete pv kratos-pv
