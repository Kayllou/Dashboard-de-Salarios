Passos para subir o projeto
1.Faça o download do repositório

2.Crie um ambiente virtual:
python3 -m venv ./venv

3.Ative o ambiente virtual:

No Linux/Mac:
source venv/bin/activate

No Windows, abra um terminal no modo administrador e execute o comando:
Set-ExecutionPolicy RemoteSigned
venv\Scripts\activate

4.Instale as dependências:
pip install -r requirements.txt

5.Execute a aplicação:
docker run -p 8501:8501 streamlit-dashboard
