#### Istio Playground
This project is to create a lab environment to assist users to learn istio. Three sub-projects were created to show off istio's traffic redirection, secure communication, and cross-cluster communication capabilities. 

This tutorial was built and tested against istio 1.5.4. The kubernetes clusters have been tested against vSphere 7's guest cluster and Google's GKE. 

Istioctl & Ansible-Playbook is required to to execute step-by-step istio installation and configuration. Istioctl (version 1.5.4) is the CLI tool to install/configure/management istio. Its installation guide could be found [here](https://istio.io/docs/setup/getting-started/#download). Ansible-playbook (version 2.9.9) is used to step-by-step execute this tutorial. The installation guide is [here](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

There are 3 main folders to test Istio's capabilities: traffic, security, and cross-cluster. Please read README.md in each folder. 
