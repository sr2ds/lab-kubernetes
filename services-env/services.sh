#!/bin/bash
kubectl delete pod jenkins
kubectl delete statefulset statefulset-jenkins
kubectl delete service jenkins-loadbalancer

kubectl create -f jenkins/jenkins.yml


