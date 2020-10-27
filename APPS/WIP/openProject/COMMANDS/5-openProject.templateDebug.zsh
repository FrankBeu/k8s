#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace openproject \
	openproject ../CHART/openproject \
	--debug \
	-s templates/ingress.yaml
