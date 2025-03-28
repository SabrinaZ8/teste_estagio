from flask import Flask, jsonify, request
import pandas as pd
from flask_cors import CORS


df = pd.read_csv('./Relatorio_cadop.csv', encoding='utf-8', delimiter=';',keep_default_na=False )

app = Flask(__name__)
CORS(app)


@app.route('/buscar', methods=['GET'])
def buscar():
    termo = request.args.get('query', '')
    resultado = df[df['Nome_Fantasia'].str.contains(termo, case=False, na=False)].to_dict(orient='records')

    return jsonify(resultado)

if __name__ == '__main__':
    app.run(debug=True)