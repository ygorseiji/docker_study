from flask import Flask

app = Flask(__name__)

@app.route("/", methods=['GET'])  # Adicione o símbolo '@' aqui
def hello_world():
    return 'Olá, estou na aplicação'