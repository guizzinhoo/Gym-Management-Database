-- ============================================
-- EMPLOYEES
-- ============================================

INSERT INTO funcionario VALUES
('Carlos Silva','111.111.111-11','carlos@gym.com','21999990001','2023-01-10','Ativo','Instrutor'),
('Mariana Souza','222.222.222-22','mariana@gym.com','21999990002','2022-08-15','Ativo','Recepcionista'),
('João Pereira','333.333.333-33','joao@gym.com','21999990003','2021-04-12','Ativo','Personal Trainer');

-- ============================================
-- STUDENTS
-- ============================================

INSERT INTO aluno VALUES
('A001','Lucas Martins','123.111.222-11','lucas@email.com','21988880001','2000-04-12','Masculino','Ativo'),
('A002','Ana Clara','321.111.222-11','ana@email.com','21988880002','1998-07-21','Feminino','Ativo'),
('A003','Pedro Henrique','654.111.222-11','pedro@email.com','21988880003','1996-10-10','Masculino','Inativo');

-- ============================================
-- MEMBERSHIP PLANS
-- ============================================

INSERT INTO plano VALUES
(1,'Monthly',30,99.90),
(2,'Quarterly',90,269.90),
(3,'Annual',365,899.90);

-- ============================================
-- CONTRACTS
-- ============================================

INSERT INTO contrato VALUES
(1,'2025-01-01','2025-01-31',99.90,'Ativo','222.222.222-22','A001',1),
(2,'2025-02-01','2025-05-01',269.90,'Ativo','222.222.222-22','A002',2),
(3,'2025-01-10','2026-01-10',899.90,'Ativo','222.222.222-22','A003',3);

-- ============================================
-- EXERCISES
-- ============================================

INSERT INTO exercicio VALUES
(1,'Bench Press','Chest exercise'),
(2,'Squat','Leg exercise'),
(3,'Lat Pulldown','Back exercise'),
(4,'Shoulder Press','Shoulder exercise');

-- ============================================
-- WORKOUTS
-- ============================================

INSERT INTO ficha_exercicio VALUES
(1,1,4,10,60,90,'111.111.111-11','A001',1),
(2,2,4,12,80,120,'111.111.111-11','A001',2),
(3,1,3,12,45,90,'333.333.333-33','A002',3);

-- ============================================
-- EQUIPMENT
-- ============================================

INSERT INTO equipamento VALUES
(1001,'Movement','Weight Room','Good'),
(1002,'Life Fitness','Cardio Area','Good'),
(1003,'Technogym','Weight Room','Maintenance');

-- ============================================
-- MAINTENANCE
-- ============================================

INSERT INTO manutencao_equip VALUES
(1,'Preventive','Lubrication',150.00,'Tech Solutions','Completed',1001,'111.111.111-11'),
(2,'Corrective','Cable replacement',420.00,'Fitness Repair','In Progress',1003,'333.333.333-33');