# BD: Guião 3


## ​Problema 3.1
 
### *a)*

```
cliente(nome, endereço, num_carta, NIF)
Aluguer(numero, duração, data,  num_NIF,  num_Balcão, Num_matricula)
Balção(nome, numero, endereço)
Veiculo(marca, ano, matricula, codigo_veiculo)
TipoVeiculo(designacao, arcondicionado, ano, codigo)
Ligeiro(num_lugares, combustivel, portas, codigo_veiculo)
Pesado(peso, passageiros, codigo_veiculo)
Similaridade(codigo1. codigo2)
```


### *b)* 

```
Entidade -> chave(s) candidata(s) -> chave primária -> chave estrangeira
cliente -> num_carta, NIF -> NIF
Aluguer -> numero -> numero -> num_NIF,  num_Balcão, Num_matricula
Balção -> numero -> numero
Veiculo -> matricula -> matricula -> codigo_veiculo
TipoVeiculo -> codigo -> codigo 
Ligeiro -> codigo_veiculo -> codigo_veiculo -> codigo_veiculo
Pesado -> codigo_veiculo -> codigo_veiculo -> codigo_veiculo
Similaridade -> codigo1, codigo2 -> codigo1, codigo2, codigo1, codigo2
```


### *c)* 

![ex_3_1c!](ex_3_1c.jpg "AnImage")


## ​Problema 3.2

### *a)*

```
... Write here your answer ...
```


### *b)* 

```
... Write here your answer ...
```


### *c)* 

![ex_3_2c!](ex_3_2c.jpg "AnImage")


## ​Problema 3.3


### *a)* 2.1

![ex_3_3_a!](ex_3_3a.jpg "AnImage")

### *b)* 2.2

![ex_3_3_b!](ex_3_3b.jpg "AnImage")

### *c)* 2.3

![ex_3_3_c!](ex_3_3c.jpg "AnImage")

### *d)* 2.4

![ex_3_3_d!](ex_3_3d.jpg "AnImage")