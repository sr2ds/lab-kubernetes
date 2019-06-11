#!/bin/bash
kubectl delete pod kube-app
kubectl delete deployment kube-deployment-obj
kubectl delete service kube-loadbalance-obj

kubectl create -f pod-obj-kube.yaml 
kubectl create -f deployment-obj-kube.yaml 
kubectl create -f loadbalance-obj-kube.yaml 


