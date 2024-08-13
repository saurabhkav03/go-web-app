# Install Nginx Ingress Controller on AWS

## Add the NGINX Ingress Controller to your Helm repository (if using Helm):

```bash
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
```
## Install the NGINX Ingress Controller using Helm:
```bash
helm install my-nginx-ingress ingress-nginx/ingress-nginx --set controller.replicaCount=2
```
## Verify the installation:

```bash
kubectl get pods --namespace default -l app.kubernetes.io/name=ingress-nginx --watch
```
## Optionally, if you're not using Helm, you can install the NGINX Ingress Controller using Kubernetes manifests:

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.11.1/deploy/static/provider/aws/deploy.yaml
```

## Verify the ingress controller service:
```bash
kubectl get services -o wide -w -n ingress-nginx
```
