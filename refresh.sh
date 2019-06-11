#!/bin/bash
kubectl delete pod kube-app
kubectl delete deployment kube-deployment-obj
kubectl delete service kube-loadbalance-obj

kubectl create -f app-env/app.yaml 


