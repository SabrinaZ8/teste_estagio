--Importar dados para tabela operadoras*/

LOAD DATA INFILE '../Relatorio_cadop.csv'
INTO TABLE operadoras
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

--Importar dados para tabela demonstrativos contabeis dos ultimos 2 anos 2024/2023*/

--1T2023
LOAD DATA INFILE '../demonstracoes_contabeis/1T2023.csv'
INTO TABLE demonstrativos_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%Y-%m-%d');

--2T2023
LOAD DATA INFILE '../demonstracoes_contabeis/2T2023.csv'
INTO TABLE demonstrativos_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%Y-%m-%d');

--3T2023
LOAD DATA INFILE '../demonstracoes_contabeis/3T2023.csv'
INTO TABLE demonstrativos_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%Y-%m-%d');

--4T2023
LOAD DATA INFILE '../demonstracoes_contabeis/4T2023.csv'
INTO TABLE demonstrativos_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%Y-%m-%d');

--1T2024
LOAD DATA INFILE '../demonstracoes_contabeis/1T2024.csv'
INTO TABLE demonstrativos_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%Y-%m-%d');

--2T2024
LOAD DATA INFILE '../demonstracoes_contabeis/2T2024.csv'
INTO TABLE demonstrativos_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%Y-%m-%d');

--3T2024
LOAD DATA INFILE '../demonstracoes_contabeis/3T2024.csv'
INTO TABLE demonstrativos_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%Y-%m-%d');

--4T2024
LOAD DATA INFILE '../demonstracoes_contabeis/4T2024.csv'
INTO TABLE demonstrativos_contabeis
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%Y-%m-%d');
