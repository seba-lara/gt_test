## Prueba tecnica GlobalTuning
El archivo a continuacion se divide ne dos partes, en la primera se explica la forma para levantar un cluster en el servicio EKS de AWS, y en la segunda parte se indica como utilizar los script para los modulos.

### Para  la creacion del cluster utilice los siguientes comanodos
```
eksctl create cluster --name myclustertest --region us-east-1
```
### Y para eliminar el cluster utilce ell siguieinte

```
eksctl delete cluster --name myclustertest --region us-east-1
```
---

Antes de iniciar se recomienda dar los permisos necesarios a los scr
Ejecute los script de la siguiente manera :

```
/bin/bash chmod +x deploy.sh delete.sh
```

### Para levantar los modulos en AWS EKS

Cuando finalice la ejecucion podrá ver la IP publica del nodo ngix.

```
./deploy.sh
```

### Para eliminar los modulos

```
./delete.sh
```
