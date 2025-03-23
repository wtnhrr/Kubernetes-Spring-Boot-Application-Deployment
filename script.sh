#!/bin/bash

# Definindo variáveis
DOCKER_IMAGE_NAME="wtnsec/hello-world"
K8S_MANIFEST="k8s.yaml"

# Passo 1: Construir a imagem Docker
echo "Construindo a imagem Docker..."
docker build -t $DOCKER_IMAGE_NAME .

# Passo 2: Enviar a imagem para o Docker Hub
echo "Enviando a imagem Docker para o Docker Hub..."
docker push $DOCKER_IMAGE_NAME

# Passo 3: Aplicar os manifests do Kubernetes
echo "Aplicando os manifests do Kubernetes..."
kubectl apply -f $K8S_MANIFEST

# Passo 4: Verificar os pods e serviços
echo "Verificando o status dos pods e serviços..."
kubectl get pods
kubectl get svc

# Passo 5: Testar o acesso à aplicação (assumindo NodePort)
echo "Testando o acesso à aplicação..."
kubectl port-forward svc/hello-world-service 8080:80 &
echo "Acesse a aplicação em http://localhost:8080"
echo "Ctrl+C para parar o port-forward"

# Passo 6: Verificar o Horizontal Pod Autoscaler
echo "Verificando o Horizontal Pod Autoscaler (HPA)..."
kubectl get hpa

# Testar o autoscaling 
#echo "Simulando carga para testar o autoscaling..."
#hey -n 10000 -c 100 http://localhost:8080