#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace grafana \
	grafana ../CHART/grafana \
	--debug \
        -s templates/ingress.yaml
        #-s templates/synapse/configmap.yaml


