#!/usr/bin/env zsh
###
##
# * DEBUG
##
###
helm install \
	--namespace mattermost \
	--dry-run \
	--debug \
	mattermost ../CHART/mattermost-team-edition
