#### Istio Playground
This project is to create a lab environment to assist users to learn istio. Three projects were created to show off istio's traffic redirection, secure communication, and cross-cluster communication capabilities. 

This tutorial was built and tested against istio 1.5.4. The kubernetes clusters have been tested against vSphere 7's guest cluster and GKE. 

Ansible-Playbook is required to to execute step-by-step istio installation and configuration. There are 3 main folders to test Istio's capabilities: traffic, security, and cross-cluster. Please read README.md in each folder. 

I've tested ansible version: 2.9.9. Ansible installation could be found at [this link](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
