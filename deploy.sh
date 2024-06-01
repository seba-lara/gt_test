#!/bin/bash

echo " [step 1] creando namespace..."
echo ""
kubectl create -f namespace.yaml

echo " [step 2] creando deploy..."
echo ""
kubectl create -f nginx-deployment.yaml

echo " [step 3] estado del deploy..."
echo ""
kubectl get pod -n nginx-test

echo " [step 4] exponer a internet..."
echo ""
kubectl expose deploy nginx-test -n nginx-test --type=LoadBalancer --port=80

echo " [step 5] ok..."
echo ""
PUBLIC_IP=$(kubectl get svc -n nginx-test | awk '{print $4}')
echo " IP publica del servidor nginx : $PUBLIC_IP"