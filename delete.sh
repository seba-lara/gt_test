# 1 crear namespace
kubectl delete namespace nginx-test
kubectl delete -f nginx-deployment.yaml
kubectldelete -f namespace.yaml

echo "OK!"
sleep 1
