### Cross-Cluster folder implements the cross cluster features of Istio.
#### Quick Start Guide
Two Kubernetes clusters were required for running this lab. Please use 
```kubectl config get-contexts```
to retrieve both your cluster contexts name and input onto install-istio.yaml file to replace sm-1 and sm-2. 
```
# Install istio with trust certificates and kiali's default username/password: admin/admin
ansible-playbook install-istio.yaml --tag istio

# Setup gateway on the first cluster as the main entry of the service. \n This script will install reviews-v2, reviews-v3 and rating services in the remote cluster. \n  
ansible-playbook install-istio.yaml --tag bookinfo

# Setup cross cluster's service-entry and destinationrules.\n This script will automatically detect cluster's egressipgateway and ingressipgateway IP addresses. 

ansible-playbook install-istio.yaml --tag cross
```
