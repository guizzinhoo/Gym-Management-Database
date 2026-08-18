-- ============================================
-- LIST ALL ACTIVE STUDENTS
-- ============================================

SELECT *
FROM aluno
WHERE status = 'Ativo';


-- ============================================
-- STUDENTS AND THEIR MEMBERSHIP PLANS
-- ============================================

SELECT
    a.nome AS Student,
    p.nome AS Plan,
    c.data_inicio,
    c.data_fim
FROM contrato c
JOIN aluno a
ON c.fk_aluno_matricula = a.matricula
JOIN plano p
ON c.fk_plano_codigo_plano = p.codigo_plano;


-- ============================================
-- EMPLOYEES RESPONSIBLE FOR CONTRACTS
-- ============================================

SELECT
    f.nome,
    COUNT(*) AS Contracts
FROM funcionario f
JOIN contrato c
ON f.cpf = c.fk_funcionario_cpf
GROUP BY f.nome;


-- ============================================
-- STUDENTS WITH THEIR WORKOUTS
-- ============================================

SELECT
    a.nome,
    e.nome AS Exercise,
    fe.series,
    fe.repeticoes,
    fe.carga_kg
FROM ficha_exercicio fe
JOIN aluno a
ON fe.fk_aluno_matricula = a.matricula
JOIN exercicio e
ON fe.fk_exercicio_cod_exercicio = e.cod_exercicio;


-- ============================================
-- EQUIPMENT UNDER MAINTENANCE
-- ============================================

SELECT
    e.num_patrimonio,
    e.fabricante,
    m.status,
    m.descricao
FROM equipamento e
JOIN manutencao_equip m
ON e.num_patrimonio = m.fk_equipamento_num_patrimonio
WHERE m.status <> 'Completed';


-- ============================================
-- TOTAL REVENUE BY MEMBERSHIP PLAN
-- ============================================

SELECT
    p.nome,
    SUM(c.valor_pago) AS TotalRevenue
FROM contrato c
JOIN plano p
ON c.fk_plano_codigo_plano = p.codigo_plano
GROUP BY p.nome
ORDER BY TotalRevenue DESC;


-- ============================================
-- NUMBER OF STUDENTS BY STATUS
-- ============================================

SELECT
    status,
    COUNT(*) AS Total
FROM aluno
GROUP BY status;


-- ============================================
-- MOST USED EXERCISES
-- ============================================

SELECT
    e.nome,
    COUNT(*) AS TimesAssigned
FROM ficha_exercicio fe
JOIN exercicio e
ON fe.fk_exercicio_cod_exercicio = e.cod_exercicio
GROUP BY e.nome
ORDER BY TimesAssigned DESC;