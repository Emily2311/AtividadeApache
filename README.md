# Projeto Apache Hop - Construção de Tabela Fato

## Alunas

* Emily Pereira Gonçalves
* Kerollayne Akemy Gonçalves Pereira

---

## Descrição do Projeto

Este projeto tem como objetivo realizar a construção de uma tabela fato utilizando o Apache Hop integrado ao PostgreSQL.

A pipeline foi desenvolvida para realizar o processo de ETL (Extract, Transform and Load), realizando:

* Extração de dados das tabelas de vendas, produtos e vendedores;
* Integração dos dados utilizando Merge Join;
* Criação da métrica `valor_total`;
* Organização e tratamento dos dados;
* Carga final na tabela `dw_vendas`.

---

## Tecnologias Utilizadas

* Apache Hop
* PostgreSQL
* Docker
* pgAdmin
* Git e GitHub

---

## Estrutura da Pipeline

A pipeline foi construída seguindo as etapas:

1. Table Input (Vendas)
2. Table Input (Produtos)
3. Table Input (Vendedor)
4. Merge Join 1
5. Merge Join 2
6. Calculator
7. Select Values
8. Table Output

---

## Banco de Dados

### Tabelas utilizadas

* vendedor
* produtos
* vendas
* dw_vendas

---

## Objetivo da Tabela Fato

A tabela `dw_vendas` foi criada para centralizar as informações de vendas, permitindo análises de:

* Produtos vendidos;
* Quantidade de vendas;
* Valor total das vendas;
* Vendedores;
* Datas das vendas.

---

## Resultado

A pipeline foi executada com sucesso, realizando a carga dos dados na tabela `dw_vendas` no PostgreSQL.

---

## Repositório

Projeto desenvolvido para atividade acadêmica utilizando Apache Hop e PostgreSQL.
