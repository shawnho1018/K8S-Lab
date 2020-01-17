#!/bin/bash
# Add CoreDNS forwarder address to 8.8.8.8
kubectl apply -f kubeapps/coredns-forwarder.yaml

# Deploy Helm
kubectl apply -f kubeapps/tiller-rbac.yaml
kubectl apply -f kubeapps/tiller.yaml

# Wait until tiller is ready
while [[ $(kubectl get pods -l app=helm -l name=tiller -n kube-system -o 'jsonpath={..status.conditions[?(@.type=="Ready")].status}') != "True" ]]; do echo "waiting for pod" && sleep 1; done

sleep 2
helm install --name kubeapps --namespace kubeapps --wait bitnami/kubeapps

# Kind requires using port-forward to publish services externally
POD_NAME=$(kubectl get pods -n kubeapps -l "app=kubeapps,release=kubeapps" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward -n kubeapps $POD_NAME 8080:8080
