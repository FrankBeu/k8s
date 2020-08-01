#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm install \
	--namespace gitea \
	--dry-run \
	--debug \
	gitea ../CHART/gitea
