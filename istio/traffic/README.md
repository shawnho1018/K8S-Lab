#### Test Istio Traffic Redirection
This project is to test Istio's main feature: service redirection. Several use cases would be shared, including version control, blue-green deployment, A-B testing, and delay failure test. 
```
# Before begin, please change your working directory to traffic folder and also retrieve your kubeconfig.
ansible-playbook install-istio.yaml --tag istio --tag bookinfo

# To show all traffic were redirected to reviews:v1 version. 
ansible-playbook install-istio.yaml --tag v1

# To show all traffic were redirected to reviews:v2 and reviews:v3, respectively
ansible-playbook install-istio.yaml --tag v2v3

# To show AB test. Login productpage with user jason to see the difference
ansible-playbook install-istio.yaml --tag abtest

# To add 5 seconds delay to see if it affects performance. Jaeger can be used to check. 
ansible-playbook install-istio.yaml --tag delay
```
Use ```istioctl dashboard jaeger ``` to call up jaeger