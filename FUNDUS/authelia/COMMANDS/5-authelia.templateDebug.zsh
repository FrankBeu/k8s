#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace kratos \
	kratos ../CHART/kratos \
	--debug \
	-s templates/ingress.yaml
