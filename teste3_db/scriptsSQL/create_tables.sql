CREATE TABLE operadoras (
    Registro_ANS INT PRIMARY KEY,
    CNPJ VARCHAR(14) NOT NULL,
    Razao_Social VARCHAR(255) NOT NULL,
    Nome_Fantasia VARCHAR(255),
    Modalidade VARCHAR(100),
    Logradouro VARCHAR(255),
    Numero VARCHAR(20),
    Complemento VARCHAR(255),
    Bairro VARCHAR(100),
    Cidade VARCHAR(100),
    UF CHAR(2),
    CEP VARCHAR(8),
    DDD VARCHAR(3),
    Telefone VARCHAR(20),
    Fax VARCHAR(20),
    Endereco_eletronico VARCHAR(255),
    Representante VARCHAR(255),
    Cargo_Representante VARCHAR(100),
    Regiao_de_Comercializacao INT,
    Data_Registro_ANS DATE
)

CREATE TABLE demonstrativos_contabeis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    reg_ans INT NOT NULL,
    cd_conta_contabil INT NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    vl_saldo_inicial DECIMAL(15,2) NOT NULL,
    vl_saldo_final DECIMAL(15,2) NOT NULL
);