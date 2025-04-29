# Kubernetes Spring Boot Application Deployment

Este projeto tem como objetivo demonstrar o **deploy de uma aplicação Java simples** no Kubernetes, utilizando **Spring Boot** como framework. O processo inclui a **containerização da aplicação** com Docker, configuração de diferentes tipos de **Services**, implementação de **Horizontal Pod Autoscaling (HPA)** e **Rolling Updates**.

### Tópicos Abordados

1. **Deploy de uma aplicação Spring Boot "Hello, World!"**  
   - Uma aplicação simples que responde com uma string quando acessada.

2. **Containerização com Docker**  
   - Uso de Dockerfile para criar uma imagem da aplicação e disponibilizá-la no Docker Hub.

3. **Exploração de Diferentes Tipos de Services no Kubernetes**  
   - Tipos de Service explorados: `NodePort`, `LoadBalancer`, `ClusterIP`.
   - Configuração e teste do acesso à aplicação.

4. **Implementação de Horizontal Pod Autoscaling (HPA)**  
   - Configuração do HPA para escalar a aplicação com base no uso de CPU.
   - Simulação de carga usando ferramentas como `hey`.

5. **Rolling Updates**  
   - Atualização da aplicação com uma nova versão, e observação do processo de atualização sem downtime.

6. **Pipeline CI/CD**  
   - Implementação de um pipeline CI/CD utilizando **GitHub Actions** para automatizar o processo de build, containerização e deploy.  
   - O pipeline foi configurado como parte do aprendizado em automação de deploys e integração contínua.

---

### Para rodar o projeto, você precisa de:

- **Docker Desktop** (com Kubernetes habilitado) ou **Minikube**.
- **kubectl** para interagir com o cluster Kubernetes.
- **Maven** para build da aplicação Java (pode ser executado dentro do Docker).
- **Ferramenta para simulação de carga** (opcional, como `hey`).
