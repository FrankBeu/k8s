#!/usr/bin/env zsh

echo -e "ALL:"
kubectl --namespace test-flutter get all
echo -e "\nINGRESS:"
kubectl --namespace test-flutter get ingress

echo -e "\nNAMESPACE:"
kubectl get namespaces test-flutter

#kubectl --namespace test-whoami get deployment,service,ingress,namespace
