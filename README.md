## Prueba tecnica GlobalTuning
El archivo a continuacion se divide ne dos partes, en la primera se explica la forma para levantar un cluster en el servicio EKS de AWS, y en la segunda parte se indica como utilizar los script para los modulos.

## Primera parte

#### Para  la creacion del cluster utilice los siguientes comanodos
```
eksctl create cluster --name myclustertest --region us-east-1
```
#### Y para eliminar el cluster utilce ell siguieinte

```
eksctl delete cluster --name myclustertest --region us-east-1
```

## Segunda parte
Antes de iniciar la segunda parte se recomienda dar los permisos necesarios a los scriptde instalacion.

```
/bin/bash chmod +x deploy.sh delete.sh
```

### Ejecute los script :

#### Para levantar los modulos en AWS EKS

Cuando finalice la ejecucion podrá ver la IP publica del nodo ngix.

```
./deploy.sh
```

### Para eliminar los modulos

```
./delete.sh
```
