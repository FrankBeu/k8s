#!/usr/bin/env zsh 

if [[ $# -eq 0 ]];then
	NAME_ARG="k3s-default"
else
	NAME_ARG="$1"
fi

#echo "You have to merge the new config: $(k3d get-kubeconfig --name=$(kubectx -c)) manually into /home/frank/.kube/config"
cp /home/frank/.config/k3d/${NAME_ARG}/kubeconfig.yaml /home/frank/.kube/configNEW &&
mv /home/frank/.kube/{,BAK/}config &&
mv /home/frank/.kube/BAK/config{,-$(date +%s)} &&
mv /home/frank/.kube/config{NEW,}
