#!/bin/bash
IP=$(kubectl get svc -n istio-system | grep ingress | awk '{print $4}')
for i in {1..$1}; do curl -s -o /dev/null $IP/productpage; echo "$i retries"; sleep 1;done
