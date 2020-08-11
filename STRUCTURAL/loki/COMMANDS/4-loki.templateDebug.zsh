#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace loki \
	loki ../CHART/loki-stack \
	--debug \
        -s templates/ingress.yaml


