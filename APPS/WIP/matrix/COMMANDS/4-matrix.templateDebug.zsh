#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace matrix \
	matrix ../CHART/matrix-chart \
	--debug \
        -s templates/synapse/configmap.yaml
        #-s templates/ingress.yaml
