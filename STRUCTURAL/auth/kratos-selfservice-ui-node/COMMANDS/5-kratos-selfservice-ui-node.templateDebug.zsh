#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm template \
	--namespace kratos-selfservice-ui-node \
	kratos-selfservice-ui-node ../CHART/kratos-selfservice-ui-node \
	--debug \
	-s templates/ingress.yaml
