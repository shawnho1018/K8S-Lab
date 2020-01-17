[Kind](https://kind.sigs.k8s.io/docs/user/quick-start/) is a good alternative to start kubernetes cluster on desktop using docker technology. 

###New-Release
* Add Support for kind 0.6.1 (Kubernetes Cluster will be updated to v.1.16.3)
* Add Calico Support: Run k8s-start-calico.sh to use Calico as CNI. k8s-start.sh utilizes the out-of-box kind CNI. 

###Easy-Start
* Docker Installed
* Download kind from [release](https://github.com/kubernetes-sigs/kind/releases) page, untar it and place under exectuable path. 
    * Please directly download kind binary files and untar it in your OS. If you're using MAC, please download the binary with "darwin" in it. 
* Download kubectl CLI from [release](https://github.com/kubernetes/kubernetes/releases) page. The downloaded version must <= your cluster version. 
* Run k8s-start.sh or k8s-start-calico.sh and you would find the k8s cluster being created in no time. 
    * The entire setup usually takes only 2~3 minutes. If the installation takes too long, please check your network.
    * Directly running k8s-start.sh will trigger kind to docker pull images from gcr.io. If your location prevents you from using gcr.io, please setup your docker proxy to download.

###Demonstration
* As an user, you may think how I should deal with such a laptop-based cluster. Could it really work? I hope to demonstrate that this cluster does not only work but also really to test complicated applications. 
<br> I am going to demonstrate to deploy Kubeapps on this cluster. [Kubeapps] is an open-source helm-based application market. With kubeapps is ready, user could deploy complicated kubernetes application (e.g. Prometheus or Kafka) with one single click. The script is ready to be tested using kubeapps-start.sh.  
<br> Kubeapps requires DNS resolver to get helm chart library's address; therefore, a forwarder is added in kind's CoreDNS. After kubeapps is deployed, you can publish the service to localhost:8080 using the following commands:

```yaml
export POD_NAME=$(kubectl get pods -n kubeapps -l "app=kubeapps,release=kubeapps" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward --namespace kubeapps $POD_NAME 8080:8080
``` 

