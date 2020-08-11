#!/usr/bin/env zsh
###
##
# * REMOVAL
##
###
helm uninstall mattermost
kubectl delete namespace mattermost
kubectl delete pv mattermost-pv
