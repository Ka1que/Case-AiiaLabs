FROM python:3.8-slim

# Definir o diretório de trabalho
WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl \
    netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*

RUN pip install awscli localstack-client

# Instalar dependências
COPY app/requirements.txt .
RUN pip install -r requirements.txt

# Copiar o código da aplicação para o contêiner
COPY app/ .

# Expõe a porta 5000
EXPOSE 5000

# Comando para rodar a aplicação 
#CMD ["python", "app.py"]
