#!/bin/bash
kind create cluster --config ./cluster-calico.yaml
kubectl apply -f 0-calico.yaml
