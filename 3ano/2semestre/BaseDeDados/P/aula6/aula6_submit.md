# BD: Guião 6

## Problema 6.1

### *a)* Todos os tuplos da tabela autores (authors);

```
select * from authors
```

### *b)* O primeiro nome, o último nome e o telefone dos autores;

```
select au_fname, au_lname, authors.phone from authors
```

### *c)* Consulta definida em b) mas ordenada pelo primeiro nome (ascendente) e depois o último nome (ascendente); 

```
select A.au_fname, A.au_lname, A.phone 
from authors as A
ORDER BY A.au_fname, A.au_lname
```

### *d)* Consulta definida em c) mas renomeando os atributos para (first_name, last_name, telephone); 

```
select A.au_fname as first_name, A.au_lname as last_name, A.phone as telephone
from authors as A
ORDER BY first_name, last_name
```

### *e)* Consulta definida em d) mas só os autores da Califórnia (CA) cujo último nome é diferente de ‘Ringer’; 

```
select A.au_fname as first_name, A.au_lname as last_name, A.phone as telephone
from authors as A
where A.state = 'CA' and A.au_lname != 'Ringer'
ORDER BY first_name, last_name
```

### *f)* Todas as editoras (publishers) que tenham ‘Bo’ em qualquer parte do nome; 

```
SELECT publishers.pub_name
FROM publishers
WHERE publishers.pub_name LIKE '%Bo%';
```

### *g)* Nome das editoras que têm pelo menos uma publicação do tipo ‘Business’; 

```
select P.pub_name, T.title, T.type
from publishers as P, titles as T
where T.type = 'business'
```

### *h)* Número total de vendas de cada editora; 

```
SELECT pub_name, SUM(sales.qty) AS total_sales 
FROM ((sales INNER JOIN titles ON sales.title_id=titles.title_id) INNER JOIN publishers ON publishers.pub_id=titles.pub_id)
GROUP BY pub_name;
```

### *i)* Número total de vendas de cada editora agrupado por título; 

```
SELECT pub_name, SUM(sales.qty) AS total_sales, title
FROM ((sales INNER JOIN titles ON sales.title_id=titles.title_id) INNER JOIN publishers ON publishers.pub_id=titles.pub_id)
GROUP BY pub_name, title;
```

### *j)* Nome dos títulos vendidos pela loja ‘Bookbeat’; 

```
SELECT titles.title, stores.stor_id, stores.stor_name
FROM ((titles JOIN sales ON titles.title_id=sales.title_id) JOIN stores ON sales.stor_id=stores.stor_id)
WHERE stor_name = 'Bookbeat'
```

### *k)* Nome de autores que tenham publicações de tipos diferentes; 

```
SELECT au_fname, au_lname, COUNT(DISTINCT T.type) AS Counter
FROM ((authors AS A 
      JOIN titleauthor AS TA ON A.au_id = TA.au_id)
      JOIN titles AS T ON TA.title_id = T.title_id)
GROUP BY au_fname, au_lname
HAVING COUNT(DISTINCT T.type) > 1
```

### *l)* Para os títulos, obter o preço médio e o número total de vendas agrupado por tipo (type) e editora (pub_id);

```
SELECT T.pub_id, type, COUNT(S.qty) AS sales_amount, AVG(price) AS avg_price
FROM ((publishers as P JOIN titles as T ON T.pub_id=P.pub_id) JOIN sales as S ON T.title_id=S.title_id)
GROUP BY T.pub_id, type
```

### *m)* Obter o(s) tipo(s) de título(s) para o(s) qual(is) o máximo de dinheiro “à cabeça” (advance) é uma vez e meia superior à média do grupo (tipo);

```
SELECT T.type
from titles as T
group by T.type
Having MAX(T.advance)> 1.5*AVG(T.advance)
```

### *n)* Obter, para cada título, nome dos autores e valor arrecadado por estes com a sua venda;

```
SELECT T.title, A.au_fname, A.au_lname, royaltyper * (ytd_sales*price) * royalty / 10000 AS earnings
FROM ((authors AS A 
      JOIN titleauthor AS TA ON A.au_id = TA.au_id)
      JOIN titles AS T ON TA.title_id = T.title_id)
ORDER BY T.title
```

### *o)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, a faturação total, o valor da faturação relativa aos autores e o valor da faturação relativa à editora;

```
SELECT title, ytd_sales, ytd_sales*price AS facturacao, 
	ytd_sales*price*royalty/100 AS auth_revenue, 
	ytd_sales*price-ytd_sales*price*royalty/100 AS publisher_revenue
FROM titles
ORDER BY title
```

### *p)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, o nome de cada autor, o valor da faturação de cada autor e o valor da faturação relativa à editora;

```
SELECT title, au_fname, au_lname, 
	ytd_sales*price*royalty/100 as auths_revenue,
	price*ytd_sales-price*ytd_sales*royalty/100 AS publisher_revenue
FROM ((titles as T JOIN titleauthor as TA ON T.title_id=TA.title_id)
		JOIN authors as A ON A.au_id=TA.au_id)
```

### *q)* Lista de lojas que venderam pelo menos um exemplar de todos os livros;

```
SELECT stor_id
FROM sales as S
GROUP BY stor_id
HAVING COUNT(DISTINCT(S.title_id)) >= (SELECT COUNT(T.title_id) FROM titles as T);
```

### *r)* Lista de lojas que venderam mais livros do que a média de todas as lojas;

```
SELECT ST.stor_id, ST.stor_name, SUM(S.qty) AS total_sales
FROM sales AS S 
JOIN stores AS ST ON S.stor_id = ST.stor_id
GROUP BY ST.stor_name, ST.stor_id
HAVING SUM(S.qty) > (
    SELECT AVG(total_sales) 
    FROM (
        SELECT SUM(qty) AS total_sales 
        FROM sales 
        GROUP BY stor_id
    ) AS store_sales
);
```

### *s)* Nome dos títulos que nunca foram vendidos na loja “Bookbeat”;

```
SELECT title 
FROM titles
WHERE title_id NOT IN
	(SELECT title_id FROM sales
		FULL OUTER JOIN stores
		ON sales.stor_id=stores.stor_id
		WHERE stor_name='Bookbeat');..
```

### *t)* Para cada editora, a lista de todas as lojas que nunca venderam títulos dessa editora; 

```
(SELECT pub_name, stor_name
FROM stores, publishers )
EXCEPT
-- Os que venderam dessa publisher
	(SELECT pub_name, stor_name
	FROM publishers JOIN 
		(SELECT titles.pub_id AS ppid, sales.stor_id, stor_name
		FROM titles JOIN sales
		ON titles.title_id=sales.title_id
		JOIN stores
		ON sales.stor_id=stores.stor_id) AS T --subquery T
	ON pub_id=ppid);
```

## Problema 6.2

### ​5.1

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_1_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_1_data.sql "SQLFileQuestion")

Problema 6.2

### ​5.1

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_1_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_1_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```

SELECT Pname, Ssn, Fname, Lname 
FROM Company.Project
INNER JOIN Company.Works_on ON Pno = Pnumber
INNER JOIN Company.Employee ON Essn = Ssn;
```

##### *b)* 

```

SELECT Fname, Lname 
FROM Company.Employee
WHERE Super_ssn = (
  SELECT Ssn 
  FROM Company.Employee 
  WHERE Fname = 'Carlos' AND Minit = 'D' AND Lname = 'Gomes'
);
```

##### *c)* 

```

SELECT Pname, total_worked 
FROM Company.Project
INNER JOIN (
  SELECT Pno, SUM(Hours) AS total_worked 
  FROM Company.Works_on
  GROUP BY Pno
) AS Worked_Table
ON Pnumber = Pno;
```

##### *d)* 

```

SELECT Fname, Lname 
FROM Company.Project
INNER JOIN Company.Works_on ON Pnumber = Pno
INNER JOIN (
  SELECT Fname, Lname, Ssn 
  FROM Company.Employee
  WHERE Dno = 3
) AS dep3_empls
ON Essn = Ssn
WHERE Hours > 20;
```

##### *e)* 

```

SELECT Fname, Minit, Lname 
FROM Company.Employee
LEFT JOIN Company.Works_on ON Essn = Ssn
WHERE Pno IS NULL;
```

##### *f)* 

```

SELECT Dname, AVG(Salary) AS Avg_Salary 
FROM Company.Department
INNER JOIN (
  SELECT * 
  FROM Company.Employee 
  WHERE Sex = 'F'
) AS F_DEP ON Dnumber = Dno
GROUP BY Dname;
```

##### *g)* 

```

SELECT Fname, Minit, Lname 
FROM Company.Employee
INNER JOIN (
  SELECT Essn, COUNT(Essn) AS count_dep 
  FROM Company.Dependent
  GROUP BY Essn
  HAVING COUNT(Essn) > 1
) AS TWOORMORE
ON Ssn = Essn;
```

##### *h)* 

```

SELECT Fname, Minit, Lname 
FROM Company.Department
INNER JOIN (
  SELECT E.Fname, E.Minit, E.Lname, E.Ssn 
  FROM Company.Employee AS E
  LEFT JOIN Company.Dependent ON Ssn = Essn
  WHERE Essn IS NULL
) AS NODEP_EMP
ON Mgr_ssn = Ssn;
```

##### *i)* 

```

SELECT Fname, Minit, Lname, e_Address 
FROM Company.Employee
INNER JOIN (
  SELECT * 
  FROM Company.Project
  INNER JOIN Company.Dept_locations ON Dnum = Dnumber
  WHERE Dlocation != 'Aveiro' AND Plocation = 'Aveiro'
) AS PROJECT_LST
ON Dno = Dnum;
```

### 5.2

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_2_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_2_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```

SELECT nome 
FROM GESTSTOCK.encomenda
FULL OUTER JOIN GESTSTOCK.fornecedor ON fornecedor = nif
WHERE fornecedor IS NULL;
```

##### *b)* 

```

SELECT nome, AVG(I.unidades) AS media 
FROM GESTSTOCK.item AS I
INNER JOIN GESTSTOCK.produto ON codProd = codigo
GROUP BY codProd, nome;
```

##### *c)* 

```

SELECT AVG(num_prod) AS media 
FROM (
  SELECT COUNT(codProd) AS num_prod 
  FROM GESTSTOCK.item
  GROUP BY numEnc
) AS P;

```
##### *d)* 

```

SELECT F.nome, P.nome, qnt_total 
FROM GESTSTOCK.fornecedor AS F
INNER JOIN (
  SELECT codProd, fornecedor, SUM(unidades) AS qnt_total 
  FROM GESTSTOCK.item
  INNER JOIN GESTSTOCK.encomenda ON numEnc = numero
  GROUP BY codProd, fornecedor
) AS AUX_TABLE ON fornecedor = nif
INNER JOIN GESTSTOCK.produto AS P ON codProd = codigo;
```

### 5.3

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_3_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_3_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```

SELECT nome, paciente.numUtente 
FROM Prescricao.prescricao 
FULL OUTER JOIN Prescricao.paciente ON prescricao.numUtente = paciente.numUtente
WHERE numPresc IS NULL;
```

##### *b)* 

```

SELECT especialidade, COUNT(numPresc) AS total_presc 
FROM Prescricao.prescricao
INNER JOIN Prescricao.medico ON numMedico = numSNS
GROUP BY especialidade;
```

##### *c)* 

```

SELECT nome, COUNT(numPresc) AS total_presc 
FROM Prescricao.prescricao
INNER JOIN Prescricao.farmacia ON farmacia = nome
GROUP BY nome;
```

##### *d)* 

```

SELECT farmaco.nome  
FROM Prescricao.farmaco
INNER JOIN Prescricao.farmaceutica ON numRegFarm = numReg
WHERE numRegFarm = 906
EXCEPT
SELECT nomeFarmaco 
FROM Prescricao.presc_farmaco
WHERE numRegFarm = 906;
```

##### *e)* 

```

SELECT farmacia, nome, qtd_farmacos 
FROM Prescricao.farmaceutica
INNER JOIN (
    SELECT farmacia, numRegFarm, COUNT(numRegFarm) AS qtd_farmacos 
    FROM (
        SELECT farmacia, numRegFarm 
        FROM Prescricao.presc_farmaco
        INNER JOIN Prescricao.prescricao ON presc_farmaco.numPresc = prescricao.numPresc
        WHERE farmacia IS NOT NULL
    ) AS FARM_SELLED
    GROUP BY farmacia, numRegFarm
) AS AUX_TABLE ON numRegFarm = numReg;
```

##### *f)* 

```

SELECT nome 
FROM Prescricao.paciente
INNER JOIN (
    SELECT numUtente, COUNT(numMedico) AS medicos_dif 
    FROM (
        SELECT numUtente, numMedico 
        FROM Prescricao.prescricao
    ) AS AUX
    GROUP BY numUtente
    HAVING COUNT(numMedico) > 1
) AS UTENTE_2MED ON paciente.numUtente = UTENTE_2MED.numUtente;
aula6_submit.md
```