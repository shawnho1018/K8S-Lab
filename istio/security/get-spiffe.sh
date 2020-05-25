#!/bin/bash
src=$1
dst=$2
if [ -z "$1" ]; then
   src="productpage"
fi
if [ -z "$2" ]; then
   dst="reviews"
fi
kubectl exec $(kubectl get pod -l app=$src -o jsonpath={.items..metadata.name}) -c istio-proxy -- openssl s_client -showcerts -connect $dst:9080 | openssl x509 -noout -text | grep spiffe -B1 -A2
