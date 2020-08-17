#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace harbor \
	harbor ../CHART/harbor \
	--debug \
        -s templates/ingress/ingress.yaml
        #-s templates/synapse/configmap.yaml


