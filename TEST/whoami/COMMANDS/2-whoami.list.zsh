#!/usr/bin/env zsh

echo -e "ALL:"
kubectl --namespace test-whoami get all
echo -e "\nINGRESS:"
kubectl --namespace test-whoami get ingress

echo -e "\nNAMESPACE:"
kubectl get namespaces test-whoami

#kubectl --namespace test-whoami get deployment,service,ingress,namespace
