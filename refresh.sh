#!/bin/bash

## Serviços Base 
#sh services-env/services.sh
kubectl delete pod jenkins
kubectl delete statefulset statefulset-jenkins
kubectl delete service jenkins-loadbalancer

kubectl create -f services-env/jenkins/jenkins.yml

## Iniciando aplicação
kubectl delete pod kube-app
kubectl delete deployment kube-deployment-obj
kubectl delete service kube-loadbalance-obj

kubectl create -f app-env/app.yaml 

## Ver links dos serviços
minikube service list
