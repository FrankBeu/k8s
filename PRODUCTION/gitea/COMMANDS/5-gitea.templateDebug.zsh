#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace gitea \
	gitea ../CHART/gitea \
	--debug \
	-s templates/ingressRoute.yaml
        

