#!/bin/bash
TAG=$1
AWS_ECR_ACCOUNT_URL=$2
AWS_ECR_HELM_REPO_NAME=$3
echo "oci://$AWS_ECR_ACCOUNT_URL/$AWS_ECR_HELM_REPO_NAME"
#export KUBECONFIG=$HOME/.kube/config
#result=$(eval helm ls | grep node-helm-helmecr)
#if [ $? -ne "0" ]; then
#   helm install node-helm "oci://$AWS_ECR_ACCOUNT_URL/$AWS_ECR_HELM_REPO_NAME" --version $TAG
#else
   helm upgrade node-helm "oci://$AWS_ECR_ACCOUNT_URL/$AWS_ECR_HELM_REPO_NAME" --version $TAG
#fi