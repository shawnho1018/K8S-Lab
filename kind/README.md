[Kind](https://kind.sigs.k8s.io/docs/user/quick-start/) is a good alternative to start kubernetes cluster on desktop using docker technology. 

[Easy-Start]
* Docker Installed
* Download kind from [release](https://github.com/kubernetes-sigs/kind/releases) page, untar it and place under exectuable path. 
   Please directly download kind binary files and untar it in your OS. If you're using MAC, please download the binary with "darwin" in it. 
* Download kubectl CLI from [release](https://github.com/kubernetes/kubernetes/releases) page. The downloaded version must <= your cluster version. 
* Run k8s-start.sh and you would find the k8s cluster being created in no time. 
   Directly running k8s-start.sh will trigger kind to docker pull images from gcr.io. The entire setup usually takes only 2~3 minutes. If your location prevents you from using gcr.io, please setup your docker proxy to download.
