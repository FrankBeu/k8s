#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace mattermost \
	mattermost ../CHART/mattermost-team-edition \
	--debug \
	-s templates/ingress.yaml
        

