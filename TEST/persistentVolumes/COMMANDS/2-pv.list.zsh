#!/usr/bin/env zsh

echo -e "ALL:"
kubectl --namespace test-pv get all
echo -e "\nPERSISTENT_VOLUME:"
kubectl get pv

echo -e "\nNAMESPACE:"
kubectl get namespaces test-pv

#kubectl --namespace dev-nginx get deployment,service,ingress,namespace
