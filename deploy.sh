#!/bin/bash

echo " [1/5] creando namespace..."
echo ""
kubectl create -f namespace.yaml
sleep 4
echo " [2/5] creando deploy..."
echo ""
kubectl create -f nginx-deployment.yaml
#kubectl get deploy -n nginx-test
sleep 10
echo " [3/5] estado del deploy..."
echo ""
kubectl get pods -n asd | awk '{print $2}'

echo " [4/5] exponer a internet..."
echo ""
kubectl expose deploy nginx-test -n nginx --type=LoadBalancer --port=80

echo " [5/5] comprobando ip publica..."
echo ""
PUBLIC_IP=$(kubectl get svc -n asd | awk '{print $4}')
echo " IP publica del servidor nginx : $PUBLIC_IP"