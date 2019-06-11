# Laboratório DevOps - VueJs / Docker / Kubernetes

Isso é apenas um Lab para implementar auto scale com Kubernetes e, em breve, integração contínua. <br>


## Criação de imagem, tag e publicação no docker hub

```
cd kube-app
docker build -t srdavidsilva/sr2ds:dockerize-vuejs-app
docker tag {ID} srdavidsilva/sr2ds:dockerize-vuejs-app
docker push srdavidsilva/sr2ds:dockerize-vuejs-app
```

### Testar a imagem no docker local

```
docker run -it -p 8080:8080 --rm --name dockerize-vuejs-app-1 srdavidsilva/sr2ds:dockerize-vuejs-app
```

## Criar objetos no kubernetes para a aplicação:

 Deployment: Objeto que escalará os Pods <br>
 Pod: Objeto que conterá o(s) container(eres) <br>
 LoadBalance: Para distribuir o tráfego entre os objetos Deployments e disponibilizar url publica <br>

```
kubectl create -f deployment-obj-kube.yaml
kubectl create -f pod-obj-kube.yaml
kubectl create -f loadbalance-obj-kube.yaml
```

Pegar Url do Serviço: 
```
minikube service kube-loadbalance-obj --url
```

Habilitar tunel para testes locais:
```
minikube tunnel
```

