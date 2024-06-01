#!/bin/bash

echo " [1/5] creando namespace..."
echo ""
kubectl create -f namespace.yaml
sleep 4
echo ""
echo " [2/5] creando deploy..."
echo ""
kubectl create -f nginx-deployment.yaml
#kubectl get deploy -n nginx-test
sleep 10
echo ""
echo " [3/5] estado del deploy..."
echo ""
kubectl get pods -n nginx | awk '{print $2}'
echo ""
echo " [4/5] exponer a internet..."
echo ""
kubectl expose deploy nginx-test -n nginx --type=LoadBalancer --port=80
echo ""
echo " [5/5] comprobando ip publica..."
echo ""
echo "Espere mientras la ip es asignada."
sleep 20
echo ""
PUBLIC_IP=$(kubectl get svc -n nginx | awk '{print $4}')
echo ""
echo " IP publica del servidor nginx : $PUBLIC_IP"