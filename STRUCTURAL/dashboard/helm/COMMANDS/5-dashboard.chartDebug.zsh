#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm install \
	--namespace kubernetes-dashboard \
	--dry-run \
	--debug \
	kubernetes-dashboard ../CHART/kubernetes-dashboard
