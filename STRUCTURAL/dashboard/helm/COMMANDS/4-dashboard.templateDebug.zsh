#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace kubernetes-dashboard \
	kubernetes-dashboard ../CHART/kubernetes-dashboard \
	--debug \
	-s templates/ingressRoute.yaml

        

