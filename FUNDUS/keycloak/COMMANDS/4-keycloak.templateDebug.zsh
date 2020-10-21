#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace hydra \
	hydra ../CHART/hydra \
	--debug \
        -s templates/ingress.yaml
