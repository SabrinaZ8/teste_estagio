from flask import Flask, jsonify, request
import pandas as pd
from flask_cors import CORS


df = pd.read_csv('./Relatorio_cadop.csv', encoding='utf-8', delimiter=';',dtype=str ,keep_default_na=False )

app = Flask(__name__)
CORS(app)


@app.route('/buscar', methods=['GET'])
def buscar():
    termo = request.args.get('query', '')
    limit = int(request.args.get('limit', 10))

    mask = df.apply(
            lambda col: col.astype(str).str.lower().str.contains(termo, na=False, case=False)
            ).any(axis=1)
        
    resultados = df[mask].head(limit).to_dict(orient='records')
    return jsonify(resultados)

if __name__ == '__main__':
    app.run(debug=True)