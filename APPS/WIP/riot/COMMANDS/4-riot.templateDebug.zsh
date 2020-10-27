#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace riot-im \
	riot-im ../CHART/riot-im \
	--debug \
        -s templates/deployment.yaml
        #-s templates/ingress.yaml
