#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm install \
	--namespace kratos-selfservice-ui-node \
	--dry-run \
	--debug \
	kratos-selfservice-ui-node ../CHART/kratos-selfservice-ui-node
