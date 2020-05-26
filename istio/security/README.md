### Security folder implements the security features of Istio.
#### Quick Start Guide
```
# before begin, please change your working directory to security folder and also retrieve your kubeconfig.
ansible-playbook install-istio.yaml --tag istio
ansible-playbook install-istio.yaml --tag bookinfo

# This tag enables the global mtls among services. It is visible using kiali.\n You could also run get-spiffe.sh to check istio self-signed certificates. 
ansible-playbook install-istio.yaml --tag enable_global_mtls

# This tag disables MTLS between details and productpage.
ansible-playbook install-istio.yaml --tag disable_service_mtls

# This tag enable token to access productpage. To get the login token, \nplease call gen-token-query.sh and uses it in your curl request as \ncurl --header "Authorization: Bearer $TOKEN" $IP/productpage -s -o /dev/null -w "%{http_code}\n"

ansible-playbook install-istio.yaml --tag enable_authorization
```