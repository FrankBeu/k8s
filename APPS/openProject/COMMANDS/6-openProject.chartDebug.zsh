#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm install \
	--namespace openproject \
	--dry-run \
	--debug \
	openproject ../CHART/openproject
