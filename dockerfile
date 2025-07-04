# Etapa 1: Usar a imagem oficial do Python
FROM python:3.9-slim

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar os arquivos de requisitos para o contêiner
COPY requirements.txt /app/

# Instalar as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o restante dos arquivos do projeto para o contêiner
COPY . /app/

# Expor a porta que o Django vai usar (padrão 8000)
EXPOSE 8000

# Definir o comando de inicialização do Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
