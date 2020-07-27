#!/usr/bin/env zsh
###
##
# * APPLICATION
#
kubectl create namespace metallb
helm install --namespace metallb metallb ../metallb
kubectl apply -f ../metallb/metallb-config.yaml
