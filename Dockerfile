# Use a imagem oficial do Python como base
FROM python:3.13.4-alpine3.22

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo de requisitos para o contêiner e instale as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie o código da sua aplicação para o contêiner
COPY . .

# Expõe a porta 8501, que é a porta padrão do Streamlit
EXPOSE 8501

# Comando para rodar a aplicação quando o contêiner for iniciado
CMD ["streamlit", "run", "dashboard.py", "--server.port=8501", "--server.address=0.0.0.0"]