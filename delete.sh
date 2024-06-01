# 1 crear namespace
#kubectl delete namespace nginx-test
kubectl delete -f nginx-deployment.yaml
kubectl delete -f namespace.yaml
sleep 20
echo "OK!"
sleep 1
