#!/usr/bin/env zsh

### use ~/.docker/config.json

kubectl --namespace test-flutter \
    create secret generic regcred \
    --from-file=.dockerconfigjson=../config.json \
    --type=kubernetes.io/dockerconfigjson

#kubectl --namespace get secret -o yaml >> ../flutter.yaml

### remove timestamps from secret; reapply flutter.yaml
