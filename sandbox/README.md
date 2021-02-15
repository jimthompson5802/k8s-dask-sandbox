# Setup Steps

## Create namespace
``` 
kubectl create namespace dask-ns

# setup as current context namespace
kubectl config set-context --current --namespace=dask-ns
```

## Port forwarding to access pod specific function
``` 
kubectl port-forward pod/<pod-name> <host-port>:<container-port>

# example access dashboard
kubectl port-forward pod/my-dask-jupyter-749c8fc96b-5mqng 9797:8787
```