#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm install \
	--namespace kratos \
	--dry-run \
	--debug \
	kratos ../CHART/kratos
