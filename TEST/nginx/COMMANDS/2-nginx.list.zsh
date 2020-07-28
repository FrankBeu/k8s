#!/usr/bin/env zsh

echo -e "ALL:"
kubectl --namespace dev-nginx get all
echo -e "\nINGRESS:"
kubectl --namespace dev-nginx get ingress

echo -e "\nNAMESPACE:"
kubectl get namespaces dev-nginx

#kubectl --namespace dev-nginx get deployment,service,ingress,namespace
