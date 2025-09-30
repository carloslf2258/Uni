# BD: Guião 5


## ​Problema 5.1
 
### *a)*

```
π Fname,Minit,Lname,Ssn, Pname (project⨝Pnumber=Pno (employee⨝Ssn=Essn works_on)) 
```


### *b)* 

```
temp = ρ SuperEmp (π Ssn (σ (Fname='Carlos' ∧ Minit='D' ∧ Lname='Gomes') (employee)))
π Fname,Minit,Lname (employee ⨝employee.Super_ssn=SuperEmp.Ssn temp)
```


### *c)* 

```
γ Pname; SUM(Hours) -> total_hours (works_on⨝Pno=Pnumber project)
```


### *d)* 

```
π Fname, Minit, Lname (σ (Dno=3 ∧ Hours>20 ∧ Pname = 'Aveiro Digital') (project⨝Pnumber=Pno (employee⨝Ssn=Essn works_on)))
```


### *e)* 

```
π Fname, Minit, Lname (σ Hours=null (works_on⟗Essn=Ssn employee))
```


### *f)* 

```
γ Dname; avg(Salary) -> Salary (σSex='F' (department⨝Dnumber=Dno employee))
```


### *g)* 

```
σ dependents > 2 (γ Essn; count(Essn) -> dependents (dependent ⨝ Essn=Ssn employee))

```


### *h)* 

```
assoc1 = department⨝Mgr_ssn=Ssn employee
assoc2 = dependent⟗Essn=Mgr_ssn (assoc1)
πFname,Minit,Lname,Ssn (σ Essn=null (assoc2))
```


### *i)* 

```
Emp_WO = employee⨝Ssn=Essn works_on
Proj_Emp_WO = project⨝Pnumber=Pno (Emp_WO)

π Fname,Minit,Lname,Address (
	σ (Plocation='Aveiro' ∧ Dlocation≠'Aveiro') (
			dept_location⨝Dnumber=Dno Proj_Emp_WO
		)
	)
```


## ​Problema 5.2

### *a)*

```
fornecedor_sem_encomenda = σ (numero = null) (fornecedor ⟗nif=fornecedor encomenda)

π nif, nome, fax, endereco, condpag , tipo (fornecedor_sem_encomenda)
```

### *b)* 

```
γ codigo, nome; avg(item.unidades) -> unidades_avg (produto ⨝codigo=codProd item)
```


### *c)* 

```
encomenda_item = encomenda ⨝numero=numEnc item

prod_per_order_count = γ numero; count(codProd) -> prod_per_order_count (encomenda_item)

γ; avg(prod_per_order_count) -> prod_per_order_avg (prod_per_order_count)
```


### *d)* 

```
encomenda_item = encomenda⨝numero=numEnc item

encomenda_item_fornecedor = fornecedor⨝nif=fornecedor encomenda_item

encomenda_item_fornecedor_prod = produto⨝codigo=codProd encomenda_item_fornecedor

γ produto.nome, fornecedor.nome; SUM(item.unidades) -> Qt_per_Supplier (encomenda_item_fornecedor_prod)
```
## ​Problema 5.3

### *a)*

```
 π paciente.numUtente, nome, dataNasc, endereco (σ (numPresc=null) (paciente⟗prescricao))
Esta versão está melhor, só fiz uma projeção no inicio
```

### *b)* 

```
γ especialidade; COUNT(numPresc) -> prescricoes (medico⨝numSNS=numMedico prescricao)
```


### *c)* 

```
γ farmacia; COUNT(numPresc) -> prescricoes (σ (farmacia≠null) (prescricao))
```


### *d)* 

```
π nome (σ numPresc=null (presc_farmaco⟗nomeFarmaco=nome farmaco))
```

### *e)* 

```
γ farmacia, farmaceutica.nome ; COUNT(numPresc) -> sold (farmaceutica⨝numReg=numRegFarm (presc_farmaco⨝(σ farmacia≠null prescricao)))
```

### *f)* 

```
pat = γ numUtente; COUNT(numMedico) -> dif_doctors (π numUtente,numMedico prescricao)
π paciente.nome (paciente⨝(σ dif_doctors > 1 pat))
```
