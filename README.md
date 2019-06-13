# Laboratório DevOps 

Isso é apenas um Lab (com cluster local) para implementar um cenário de infra que contemple de forma automatizada aplicações com arquitetura de micro-serviços. <br>

Stack Base: Kubernetes, Jenkins, GrayLog, DB(Mongo?) <br>
Stack App: Vuejs, Laravel

## Serviços - StateFulSet

Bloco StateFul auxiliar para a aplicação, o modelo deste  plano conterá:

1. Jenkins (rodando, porém não persiste configurações entre os pods ainda)
2. GrayLog;
3. Banco de Dados (Qualquer para teste)

Nota: ainda não está funcional.<br>

## Aplicação 

Criação da infraestrura da aplicação e deploy inicial. <br> 
Já está funcional com o básico, uma aplicação `vuejs` dockerizada criada para este cenário. <br>
O Pod da aplicação roda dentro de um Deployment, também há um loadBalance para direcionar o tráfego. <br>

Implementa o ambiente com uma aplicação de testes vueJs:

```
kubectl create -f app-env/app.yaml
```

Pegar Url da aplicação:

```
minikube service kube-loadbalance-obj --url
```

Habilitar tunel para testes locais:

```
minikube tunnel
```

