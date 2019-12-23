This project shows how to utilize traefik 2.0 as ingress controller.
Run the workloads according to the index number. The current POC requires Metallb as its loadbalancer plus an external key/cert using openssl:
```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout "$1-tls.key" -out "$1-tls.crt" -subj "/CN=$1"
kubectl create secret tls $2 --key="$1-tls.key" --cert="$1-tls.crt"
```
