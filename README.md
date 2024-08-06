

# My Kubernetes

Este projeto configura um ambiente Kubernetes para uma aplicação PHP com um banco de dados MySQL. O projeto inclui scripts para construir as imagens Docker, fazer o push para o Docker Hub, e configurar os serviços e deployments no cluster Kubernetes.

## Estrutura do Projeto

- `script.sh`: Script para criar as imagens Docker, fazer o push para o Docker Hub, e aplicar as configurações de serviços e deployments no Kubernetes.
- `deployment.yml`: Arquivo de configuração dos deployments e do Persistent Volume Claim (PVC) para o MySQL.
- `service.yml`: Arquivo de configuração dos serviços para a aplicação PHP e o banco de dados MySQL.

## Como Usar

1. Configuração das Imagens Docker

Certifique-se de que o Docker esteja instalado e em execução. Para construir as imagens e fazer o push para o Docker Hub, execute o script `script.sh`:

```bash
./script.sh
```

- Certifique-se de que o script tem permissões de execução:

- Antes de rodar o script, você precisa garantir que ele tem permissões de execução. Para isso, use o comando chmod:

```bash
chmod +x script.sh
```

## Este script executa as seguintes etapas:

- Constrói a imagem Docker para o backend PHP e o banco de dados MySQL.
- Realiza o push das imagens para os repositórios no Docker Hub.

## Cria os serviços e deployments no Kubernetes usando os arquivos services.yml e deployment.yml.

2. Arquivo deployment.yml
- O arquivo deployment.yml inclui as seguintes configurações:

- PersistentVolumeClaim: Cria um volume persistente para armazenar os dados do MySQL.
- MySQL Deployment: Define o deployment do contêiner MySQL, utilizando a imagem rei200201/projeto-database:1.0.
- PHP Deployment: Define o deployment da aplicação PHP, utilizando a imagem rei200201/projeto-backend:1.0.

3. Arquivo service.yml
- O arquivo service.yml define os serviços para a aplicação PHP e o banco de dados MySQL:

- PHP Service: Cria um serviço do tipo LoadBalancer que expõe a aplicação PHP na porta 80.
- MySQL Service: Cria um serviço para o MySQL, permitindo conexões na porta 3306.

## Requisitos
- Docker
- Kubernetes (kubectl configurado)
- Minikube (opcional, se quiser rodar localmente)

## Notas
- Certifique-se de que o Kubernetes está configurado e em execução antes de rodar o script.
- O script assume que você tem permissões suficientes para realizar o push de imagens para o Docker Hub.
