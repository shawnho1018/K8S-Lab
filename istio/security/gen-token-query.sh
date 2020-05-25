#!/bin/bash
IP=$(kubectl get svc -n istio-system | grep ingress | awk '{print $4}')
TOKEN=$(curl https://raw.githubusercontent.com/istio/istio/release-1.5/security/tools/jwt/samples/demo.jwt -s)
curl --header "Authorization: Bearer $TOKEN" $IP/productpage -s -o /dev/null -w "%{http_code}\n"

