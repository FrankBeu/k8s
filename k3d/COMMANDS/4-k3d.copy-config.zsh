#!/usr/bin/env zsh 

cp /home/frank/.config/k3d/k3s-default/kubeconfig.yaml /home/frank/.kube/configNEW &&
mv /home/frank/.kube/{,BAK/}config &&
mv /home/frank/.kube/BAK/config{,-$(date +%s)} &&
mv /home/frank/.kube/config{NEW,}

