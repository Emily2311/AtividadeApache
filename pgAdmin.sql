CREATE TABLE vendedor (
    id_vendedor SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    equipe VARCHAR(100),
    regiao VARCHAR(100),
    meta_mensal NUMERIC(10,2)
);

INSERT INTO vendedor (nome, equipe, regiao, meta_mensal) VALUES
('Ana Silva', 'Equipe Norte', 'Norte', 10000),
('Bruno Costa', 'Equipe Sul', 'Sul', 15000),
('Carlos Lima', 'Equipe Centro', 'Centro-Oeste', 12000);

CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria VARCHAR(100),
    preco_unitario NUMERIC(10,2),
    estoque INT
);

INSERT INTO produtos (nome_produto, categoria, preco_unitario, estoque) VALUES
('Notebook', 'Informática', 3500, 20),
('Mouse', 'Periféricos', 80, 100),
('Teclado', 'Periféricos', 150, 50);

CREATE TABLE vendas (
    id_venda SERIAL PRIMARY KEY,
    data DATE,
    id_vendedor INT REFERENCES vendedor(id_vendedor),
    id_produto INT REFERENCES produtos(id_produto),
    quantidade INT,
    total NUMERIC(10,2)
);

INSERT INTO vendas (data, id_vendedor, id_produto, quantidade, total) VALUES
('2026-05-01', 1, 1, 2, 7000),
('2026-05-02', 2, 2, 5, 400),
('2026-05-03', 3, 3, 3, 450);

SELECT * FROM vendedor;
SELECT * FROM produtos;
SELECT * FROM vendas;

CREATE TABLE dw_vendas (
    id_venda INT,
    id_produto INT,
    produto_nome VARCHAR(100),
    id_vendedor INT,
    vendedor_nome VARCHAR(100),
    quantidade INT,
    preco_unitario NUMERIC(10,2),
    valor_total NUMERIC(10,2),
    data_venda DATE
);

SELECT * FROM dw_vendas;
