This project is to scan the security of an existing cluster.
We need to copy kube-bench and the corresponding configurations onto both master/node VMs. I've run successfully on the K8S cluster, created by PKS. The tested version is 1.13.
For example:
run kube-bench against a master with version auto-detection:

```
kube-bench master
```

or run kube-bench against a node with the node `controls` for kubernetes
version 1.13:
```
kube-bench node --version 1.13
```

