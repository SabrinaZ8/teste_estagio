# Teste Estágio

## 1. Teste web scraping

### Descrição

Este teste foi desenvolvido em **Python** para realizar a extração de arquivos PDF do site da ANS e compactá-los.

### Como testar

Para rodar localmente, siga os passos abaixo:

1. Clone o repositório:
   ```bash
   git clone https://github.com/SabrinaZ8/teste_estagio
2. Instale as dependências:
   ```bash
    pip install -r requirements.txt
3. Navegue até o diretório:
   ```bash
   cd teste_estagio/teste1_webscraping
4. Execute para extrair e compactar:
   ```bash
   python web_scrapping.py

## 2. Teste transformação de dados


## 3. Teste de Banco de Dados

### Descrição

Este teste consiste em manipular dados disponibilizados pela ANS, criando tabelas, importando dados e realizando consultas analíticas.

### Processo de Desenvolvimento

- Baixei todos os arquivos necessários para o teste e, em seguida, estruturei duas tabelas: uma para os demonstrativos contábeis e outra para a lista de operadoras.
- Realizei a importação do arquivo CSV para a tabela de operadoras, garantindo o encoding correto.
- Depois, importei os demonstrativos contábeis referentes a 8 trimestres (2 anos) e consolidei todos os dados em uma única tabela para facilitar as consultas no banco de dados.

### Imagens

Tabela Operadoras de Plano de Saúde Ativas
![Table Operadoras Select](/screenshots/table-operadoras-select.png)

Tabela Demonstrações Contábeis
![Table Demonstracoes Contabeis Select](/screenshots/table-demo-contabeis-select.png)

Consulta 10 operadoras com maiores despesas no último trimestre
![Query Despesas Trimestre](/screenshots/query-despesas-trimestre.png)

Consulta 10 operadoras com maiores despesas no último ano
### Imagens

## 4. Teste de API

### Descrição

Desenvolvimento de uma interface web em **Vue.js** que interage com um servidor **Python** para buscar cadastros de operadoras.

### Processo de Desenvolvimento

- Construí um **servidor Flask** para processar buscas nos cadastros das operadoras.
- Desenvolvi uma interface interativa com **Vue.js** para consumo da API.
- Realizei testes dos endpoints utilizando **Postman** para validar os retornos.

### Imagens

![Interface Vue](/screenshots/interface-vue.png)

