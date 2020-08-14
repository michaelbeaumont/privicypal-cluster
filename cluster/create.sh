#! /usr/bin/env bash

# git pull
# git rm ../flux
# git commit -m "Removing flux so cluster can start"
# git push

eksctl create cluster -f cluster_creation.yaml
sleep 120
eksctl enable repo -f cluster_gitops.yaml
