# BD: Guião 8


## ​8.1
 
### *a)*

```
CREATE PROCEDURE remove_employee @emp_ssn int
AS
BEGIN
	DELETE FROM works_on WHERE essn = @emp_ssn;
	DELETE FROM dependents WHERE essn = @emp_ssn;

	UPDATE department SET Mgr_ssn = NULL WHERE Mgr_ssn = @emp_ssn;
	UPDATE employee SET Super_ssn = NULL WHERE Super_ssn = @emp_ssn;
	
	DELETE FROM employee WHERE ssn = @emp_ssn;
END

```

### *b)* 

```
CREATE PROCEDURE getManagerAndOldestManager (@oldestEmp INT OUTPUT)
AS
BEGIN
-- record-set com os gestores de departamentos
SELECT Ssn, Fname, Lname, Dname, Mgr_start_date
	FROM Department 
	JOIN Employee ON Mgr_ssn = Ssn;
-- ssn e numero de anos (como gestor) do func mais antigo 
declare @oldssn as int;
declare @nyears as int;


select @oldssn = ssn, @nyears = DATEDIFF(YEAR, Mgr_start_date, getDate()) 
from Department 
	JOIN Employee ON Mgr_ssn = Ssn
	ORDER BY Mgr_start_date DESC;

select @oldssn as oldest_employee, @nyears as Number_years
END
```

### *c)* 

```
CREATE TRIGGER manager_restriction ON department
INSTEAD OF INSERT, UPDATE
AS
BEGIN
	DECLARE @Mgr_ssn INT;
	SELECT @Mgr_ssn=Mgr_ssn FROM inserted;

	IF @Mgr_ssn IN (SELECT Mgr_ssn FROM department)
		PRINT 'ERROR: Manager' + STRING(Mgr_ssn) + 'already managing one department';
	ELSE
		BEGIN
			INSERT INTO department SELECT * FROM inserted;
			PRINT 'OK!'
		END
END
```

### *d)* 

```
CREATE TRIGGER reajust_salaries_emp_manager ON employee AFTER UPDATE, INSERT
AS
BEGIN
	-- variables
	DECLARE @new_emp_salary INT;
	DECLARE @new_emp_ssn INT;
	DECLARE @dep_no INT;
	DECLARE @dep_mgr_salary INT;
	DECLARE @dep_mgr_ssn INT;
	
	-- Dno, Salary, snn
	SELECT @dep_no = Dno, @new_emp_salary = Salary, @new_emp_ssn = ssn 
		FROM inserted;
	-- Mgr_ssn 
	SELECT @dep_mgr_ssn = Mgr_ssn 
		FROM department WHERE Dnumber = @dep_no;
	-- Mgr Salary
	SELECT @dep_mgr_salary = Salary 
		FROM employee WHERE ssn = @dep_mgr_ssn;

	IF @new_emp_salary > @dep_mgr_salary
	BEGIN
		UPDATE employee SET Salary=@dep_mgr_salary-1 WHERE ssn=@new_emp_ssn;
		PRINT 'Salary readjusted';
	END
	ELSE 
		PRINT 'Salary doesnt need to be readjusted';
END
```

### *e)* 

```
CREATE FUNCTION get_emp_name_and_proj_locations (@ssn INT) RETURNS TABLE
AS
	RETURN (SELECT DISTINCT Pname, Plocation 
				FROM employee JOIN works_on ON 
					Essn=@ssn JOIN project ON Pno=Pnumber);
```

### *f)* 

```
CREATE FUNCTION get_emps_with_higher_salary_avg_dno (@dno INT) RETURNS TABLE
AS
	RETURN (SELECT * FROM employee AS E 
			WHERE @dno=Dno AND E.salary > (
				-- calculo da média do salary nesse dep
				SELECT AVG(Salary) FROM employee WHERE Dno=@dno
		)
	);
```

### *g)* 

```
CREATE FUNCTION employeeDeptHighAverage(@departId  INT)
RETURNS @table TABLE (
	pname  VARCHAR(15), 
	pnumber INT, 
	plocation VARCHAR(15), 
	dnum INT, 
	budget FLOAT, 
	totalbudget FLOAT )
AS

BEGIN
	DECLARE C CURSOR
        FOR
            SELECT Pname, Pnumber, Plocation, Dnum, SUM((Salary/40)*Hours) AS Budget  
			 FROM (project JOIN works_on ON Pnumber=Pno) JOIN employee ON Essn=Ssn WHERE Dnum=@departId
			  GROUP BY Pnumber, Pname, Plocation, Dnum
			  ORDER BY Pnumber;
 
	DECLARE @pname AS VARCHAR(15), @pnumber AS INT, @plocation as VARCHAR(15), @dnum AS INT, @budget AS FLOAT, @totalbudget AS FLOAT;
	SET @totalbudget = 0;
    OPEN C;
	FETCH C INTO @pname, @pnumber, @plocation, @dnum, @budget;

	WHILE @@FETCH_STATUS = 0
	-- Begin of logic
	BEGIN
		SET @totalbudget += @budget;
		INSERT INTO @table VALUES (@pname, @pnumber, @plocation, @dnum, @budget, @totalbudget);
		FETCH C INTO @pname, @pnumber, @plocation, @dnum, @budget;
	END
	CLOSE C;
	DEALLOCATE C;
	RETURN;
END
```

### *h)* 

```
-- Criar a tabela department_deleted
IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES  
    WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'department_deleted'
)
BEGIN
    CREATE TABLE department_deleted (
        Dname VARCHAR(15) NOT NULL,
        Dnumber INT NOT NULL,
        Mgr_ssn INT,
        Mgr_start_date DATE,
        PRIMARY KEY (Dnumber),
        UNIQUE (Dname),
        FOREIGN KEY (Mgr_ssn) REFERENCES employee(Ssn)
    );
END

go
-- Trigger INSTEAD OF DELETE
CREATE TRIGGER dep_deletion_instead_of
ON department
INSTEAD OF DELETE
AS
BEGIN
    -- Insere os dados eliminados na tabela de backup
    INSERT INTO department_deleted
    SELECT * FROM deleted;

    -- Executa o DELETE manualmente
    DELETE FROM department
    WHERE Dnumber IN (SELECT Dnumber FROM deleted);
END;

go

-- Trigger AFTER DELETE
CREATE TRIGGER dep_deletion
ON department
AFTER DELETE
AS
BEGIN
    -- Insere os dados eliminados na tabela de backup
    INSERT INTO department_deleted
    SELECT * FROM deleted;
END;
```

### *i)* 

```
Stored Procedures (SP)

- São compilados e armazenados na cache do servidor, pelo que podem ser executados muito mais rapidamente do que as consultas SQL ad hoc.
- Permitem executar outras SPs.
- Permitem devolver multiplos valores.
- Podem lançar e lidar com exceções.
- Podem executar transações.


User Defined Functions (UDF):

- São compilados e armazenados na cache do servidor.
- Só devolvem um valor.

Comparações:
As UDFs podem ser usadas como fonte de dados, e funcionar como uma view com parametros que devolve uma tabela em função do input.

Os SPs encapsulam logica que pode ser chamada como uma rotina. Devem ser usados quando varias operaçoes precisam de ser executadas numa unica transação.
```
