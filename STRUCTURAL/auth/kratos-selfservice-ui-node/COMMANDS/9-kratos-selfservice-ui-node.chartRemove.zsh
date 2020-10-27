#!/usr/bin/env zsh
###
##
# * REMOVAL
##
###
helm uninstall kratos-selfservice-ui-node
kubectl delete namespace kratos-selfservice-ui-node
kubectl delete pv kratos-selfservice-ui-node-pv
