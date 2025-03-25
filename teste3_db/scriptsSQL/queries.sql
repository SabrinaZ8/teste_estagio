-- Quais as 10 operadoras com maiores despesas em "EVENTOS/ SINISTROS CONHECIDOS OU
-- AVISADOS DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR" no último trimestre?

SELECT
	operadoras.Registro_ANS,
    CNPJ,
    operadoras.Razao_Social,
    operadoras.Nome_Fantasia,
    SUM(demonstrativos_contabeis.vl_saldo_inicial - demonstrativos_contabeis.vl_saldo_final) AS Total_Despesas
FROM
    demonstrativos_contabeis
JOIN
    operadoras
    ON demonstrativos_contabeis.reg_ans = operadoras.Registro_ANS
WHERE
    demonstrativos_contabeis.descricao = "EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR"
    AND demonstrativos_contabeis.data BETWEEN '2024-10-01' AND '2024-12-31'
GROUP BY
    operadoras.Razao_Social
ORDER BY
    Total_Despesas DESC
LIMIT 10;




-- Quais as 10 operadoras com maiores despesas nessa categoria no último ano?

SELECT
	operadoras.Registro_ANS,
    CNPJ,
    operadoras.Razao_Social,
    operadoras.Nome_Fantasia,
    SUM(demonstrativos_contabeis.vl_saldo_inicial - demonstrativos_contabeis.vl_saldo_final) AS Total_Despesas_2024
FROM
    demonstrativos_contabeis
JOIN
    operadoras
    ON demonstrativos_contabeis.reg_ans = operadoras.Registro_ANS
WHERE
    demonstrativos_contabeis.descricao = "EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR"
    AND demonstrativos_contabeis.data BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY
    operadoras.Razao_Social
ORDER BY
    Total_Despesas_2024 DESC
LIMIT 10;