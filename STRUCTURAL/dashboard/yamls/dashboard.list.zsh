#!/usr/bin/env zsh

echo -e "ALL:"
kubectl --namespace kubernetes-dashboard get all
echo -e "\nINGRESS:"
kubectl --namespace kubernetes-dashboard get ingress

#kind: ServiceAccount
#kind: Service
#kind: Secret
#kind: ConfigMap
#kind: Role
#kind: ClusterRole
#kind: RoleBinding
#kind: ClusterRoleBinding
#kind: Deployment

echo -e "\nNAMESPACE:"
kubectl get namespaces kubernetes-dashboard

#kubectl --namespace dev-nginx get deployment,service,ingress,namespace
