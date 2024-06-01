#!/bin/bash
echo "Eliminando deployment..."
echo ""
kubectl delete -f nginx-deployment.yaml
echo ""
echo "Eliminando namespace..."
echo ""
kubectl delete -f namespace.yaml
echo ""
echo "Espere..."
sleep 10
echo "OK!"
sleep 1
