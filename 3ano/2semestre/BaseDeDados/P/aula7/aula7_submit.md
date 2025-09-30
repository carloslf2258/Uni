# BD: Guião 7


## ​7.2 
 
### *a)*

```
Na 1FN, porque existem dependencias parciais, isto é, há atributos que dependem de parte da chave, por exemplo Afiliacao_Autor apenas depende de Nome_Autor. Para além disso, todos os atributos da entidade Livro possuem valores atómicos.
```

### *b)* 

```
Livro(<u>Titulo_Livro</u>, <u>Nome_Autor</u>, Tipo_Livro, NoPaginas, Ano_Publicaçao, Editor)

Autor(<u>Nome_Autor</u>, Afiliação_Autor)

Editor(<u>Editor</u>, Endereço_Editor)

Tipo_Livro(<u>Tipo_Livro, <u>NoPAginas</u>, Preço)
```




## ​7.3
 
### *a)*

```
(A, B)
```


### *b)* 

```
F2N:

R1(<u>A</u>, <u>B</u>, C)
R2(<u>A</u> , D, E, I, J)
R3(<u>B</u> , F, G, H)
```


### *c)* 

```
F3N:

R1(<u>A</u>, <u>B</u>,C)
R2(<u>A</u>, D, E)
R3(<u>B</u>, F)
R4(<u>D</u>, I, J)
R5(<u>F</u>, G, H)
```


## ​7.4
 
### *a)*

```
(B,C)
```


### *b)* 

```
3FN:

R1(<u>A</u>, <u>B</u>, C, D)
R2(<u>D</u>, E)
```


### *c)* 

```
BCNF:

R1(<u>B</u>, <u>C</u>, D)
R2(<u>C</u>, A)
R3(<u>D</u>, E)
```



## ​7.5
 
### *a)*

```
Chave de R: (A,B)
```

### *b)* 

```
2FN:

R1(<u>A</u>, <u>B</u>, D, E)
R2(<u>A</u>, C)
```


### *c)* 

```
3FN:

R1(<u>A</u>, B, E)
R2(<u>A</u>, C)
R3(<u>C</u>, D)
```

### *d)* 

```
BCFN:

R1(<u>A</u>, B, E)
R2(<u>A</u>, C)
R3(<u>C</u>, D)
```