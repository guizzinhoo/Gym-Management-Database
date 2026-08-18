-- Modelo Físico: Sistema de Gestão de Academia
-- ================================================

CREATE TABLE funcionario (
    nome          VARCHAR(100),
    cpf           VARCHAR(14) PRIMARY KEY,
    email         VARCHAR(100),
    telefone      VARCHAR(20),
    data_admissao DATE,
    status        VARCHAR(20),
    papel         VARCHAR(30)
);

CREATE TABLE aluno (
    matricula VARCHAR(20)  PRIMARY KEY,
    nome      VARCHAR(100),
    cpf       VARCHAR(14),
    email     VARCHAR(100),
    telefone  VARCHAR(20),
    data_nasc DATE,
    sexo      VARCHAR(10),
    status    VARCHAR(20)
);

CREATE TABLE plano (
    codigo_plano  INT          PRIMARY KEY,
    nome          VARCHAR(50),
    duracao_dias  INT,
    valor         DECIMAL(10,2)
);

CREATE TABLE contrato (
    cod_contrato          INT           PRIMARY KEY,
    data_inicio           DATE,
    data_fim              DATE,
    valor_pago            DECIMAL(10,2),
    status                VARCHAR(20),
    fk_funcionario_cpf    VARCHAR(14),
    fk_aluno_matricula    VARCHAR(20),
    fk_plano_codigo_plano INT
);

CREATE TABLE exercicio (
    cod_exercicio INT          PRIMARY KEY,
    nome          VARCHAR(100),
    descricao     VARCHAR(255)
);

CREATE TABLE ficha_exercicio (
    cod_ficha                  INT           PRIMARY KEY,
    ordem                      INT,
    series                     INT,
    repeticoes                 INT,
    carga_kg                   DECIMAL(6,2),
    descanso_seg               INT,
    fk_funcionario_cpf         VARCHAR(14),
    fk_aluno_matricula         VARCHAR(20),
    fk_exercicio_cod_exercicio INT
);

CREATE TABLE equipamento (
    num_patrimonio INT          PRIMARY KEY,
    fabricante     VARCHAR(100),
    localizacao    VARCHAR(100),
    estado         VARCHAR(30)
);

CREATE TABLE manutencao_equip (
    cod_manutencao               INT           PRIMARY KEY,
    tipo                         VARCHAR(30),
    descricao                    VARCHAR(255),
    custo                        DECIMAL(10,2),
    prestador                    VARCHAR(100),
    status                       VARCHAR(30),
    fk_equipamento_num_patrimonio INT,
    fk_funcionario_cpf           VARCHAR(14)
);

-- ================================================
-- CHAVES ESTRANGEIRAS
-- ================================================

ALTER TABLE contrato ADD CONSTRAINT FK_contrato_funcionario
    FOREIGN KEY (fk_funcionario_cpf)
    REFERENCES funcionario (cpf)
    ON DELETE RESTRICT;

ALTER TABLE contrato ADD CONSTRAINT FK_contrato_aluno
    FOREIGN KEY (fk_aluno_matricula)
    REFERENCES aluno (matricula)
    ON DELETE RESTRICT;

ALTER TABLE contrato ADD CONSTRAINT FK_contrato_plano
    FOREIGN KEY (fk_plano_codigo_plano)
    REFERENCES plano (codigo_plano)
    ON DELETE RESTRICT;

ALTER TABLE ficha_exercicio ADD CONSTRAINT FK_ficha_funcionario
    FOREIGN KEY (fk_funcionario_cpf)
    REFERENCES funcionario (cpf)
    ON DELETE RESTRICT;

ALTER TABLE ficha_exercicio ADD CONSTRAINT FK_ficha_aluno
    FOREIGN KEY (fk_aluno_matricula)
    REFERENCES aluno (matricula)
    ON DELETE RESTRICT;

ALTER TABLE ficha_exercicio ADD CONSTRAINT FK_ficha_exercicio
    FOREIGN KEY (fk_exercicio_cod_exercicio)
    REFERENCES exercicio (cod_exercicio)
    ON DELETE RESTRICT;

ALTER TABLE manutencao_equip ADD CONSTRAINT FK_manutencao_equipamento
    FOREIGN KEY (fk_equipamento_num_patrimonio)
    REFERENCES equipamento (num_patrimonio)
    ON DELETE RESTRICT;

ALTER TABLE manutencao_equip ADD CONSTRAINT FK_manutencao_funcionario
    FOREIGN KEY (fk_funcionario_cpf)
    REFERENCES funcionario (cpf)
    ON DELETE RESTRICT;