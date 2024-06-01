## Prueba tecnica GlobalTuning

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
### Para eliminar los modulos:
```
./delete.sh
```