#!/bin/bash
kubectl delete -f 0-bookinfo-c1.yaml
kubectl delete -f 0-bookinfo-gateway.yaml
kubectl delete -f 1-destination-rule-c1.yaml
kubectl delete -f 2-service-entry.yaml
kubectl delete -f 3-virtual-services.yaml
kubectl delete -f 0-bookinfo-c2.yaml --context sm-2
