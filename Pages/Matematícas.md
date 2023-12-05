[TOC]

# 1. CONCEPTO DE MATRIZ

## 1.1 DEFINICIÓN

* Matrices es basicamente una tabla de números ordenados.

## 1.2 Dimensión de una matriz

* Cuando una ==matriz== tiene ==m== filas y ==n== columnas, la llamamos ==una matriz de dimensión 2 x 3==.

## 1.3 Igualdad de matrices

* Dos matrices son iguales si tienen la misma dimensión y si los términos que ocupan la misma posición son iguales.

# 2. TIPOS DE MATRICES

* **Rectangular** : El número de filas es distinto del número de columnas (m != n)
* **Matriz cuadrada**: El número de filas es igual que el de columnas
* **Matriz fila**: Matriz que solo tiene una fila
* **Matriz columna**: Matriz que solo tiene una columna
* **Diagonal principal**: En una Matriz El conjunto de los términos que tienen el mismo ==subíndice== de la fila y el de la columna
* **Diagonal secundaria**: Ha sido formado por los elementos en que i + j = n + 1==(donde n es el orden **阶数** de la matriz)==

* **Matriz triangular**: Los elementos situados por encima o por debajo de la diagonal principal son ==nulos**无效的**==.
* **Matriz diagonal**: Los elementos que no están en la diagonal principal son nulos. $a_{ij} = 0$ si $i \neq j$

* **Matriz Escalar**: Todos los elementos que están en la diagonal principal son iguales.

**Matriz Unidad (identidad)**: Es ==la matriz escalar== en la que los elementos no nulos son iguales a 1. En este caso se representa la matriz por ==***I***==

* **Matriz Nula**: Todos los elementos son cero

# 3. OPERACIONES CON MATRICES

## 3.1 Suma

* $C = A + B \Rightarrow c_{ij} = a_{ij} + b_{ij}$

* Eje.

* $$
    A = 
    \begin{bmatrix*}
    a_{11} & a_{12} \\
    a_{21} & a_{22} \\
    \end{bmatrix*}
    \;\;\;\;
    B = 
    \begin{bmatrix*}
    b_{11} & b_{12} \\
    b_{21} & b_{22} \\
    \end{bmatrix*}
    
    \;\;\;\;
    
    C = A + B =
    \begin{bmatrix*}
    a_{11} + b_{11} & a_{11} + b_{12} \\
    a_{11} + b_{21} & a_{11} + b_{22} \\
    \end{bmatrix*}
    $$

## 3.2 Producto de un número (escalar) por una matriz

> **Producto**: ==乘积==
>
> **Propiedad**: ==性质==

* $kA = k(a_{ij} = (ka_{ij}))$

* == El cojunto de matrices $M_{m \times n}$ respecto de las operaciones suma de matrices y producto por un número real$(M_{m \times n}, +,\cdot k)$ tiene estructura ==espacio vectorial== 

    > 就是说矩阵与单个数字的乘积和矩阵的加法有向量意义

## 3.3 Producto de matrices

* ==Para cumplir el producto de matrices sus dimenciones deben cumplir una condiciones:**Sean las matrices A y B de dimenciones $m \times n\;y\; n \times p$(El número de columnas de la matriz A es igual al  número de filas de la matriz B)**== se define el producto $A\cdot B$, y en ese orden, como una matriz C de dimensiones $m \times p$ cuyos elementos son de la forma:

$$
\left.
\begin{aligned}
A = (a_{ij}) \\
B = (b_{ij})
\end{aligned}
\right\}
\rightarrow C = 
A \cdot B = (a_{ij})(b_{ij})
\left |
C_{ij} = \sum ^n_{k = 1} a_{ik} \cdot b_{kj}
\right.
$$

> El número de columnas de A es igual al número de filas de B, por lo tanto se pueden multiplicar en ese orden.
>
> **El producto $A \cdot B$  esté definido no implica que lo esté el producto $B \cdot A$**

* El producto de matrices ***==No tiene la propiedad conmutativva(矩阵乘法不满足交换律)==***

## 3.4 Matriz inversa

* ==Definición==: si dada una matriz cuadrada A existe otra matriz B, tb cuadrada, que multiplicada por la matriz A nos da la ==matriz unidad==, se dice que la matriz A es una **matriz inversa** de A y se representa por $A^{-1}$:

* $$
    A \cdot A^{-1} = A^{-1} \cdot A = 1
    $$

* ==si una matriz cuadrada no tiene matriz inversa, se dice que la matrizes **singular**==

* Para hallar una matriz inversa dispondermos de varios métodos distintos. En este tema veremos dos:
    * Resolver un sistema de ecuaciones
    * El método de Gauss-Jordan

### 3.4.1Resolver un sistema de ecuaciones

* Eje.

* sea $A = \left (\begin{matrix} 1 & 2 \\ 3 & 6 \end{matrix} \right)$, halla la matriz inversa $A^{-1}$ mediante un sistema de ecuaciones.

* 1. De nuevo, planteamos la matriz $A^{-1} = \left (\begin{matrix}a&b\\c&d \end{matrix}\right)$ y hallamos el producto:
        $$
        A \cdot A^{-1} = 
        \left(
        	\begin{matrix}
        		1&2 \\
        		3&6
        	\end{matrix}
        \right) 
        
        \cdot
        
        \left(
        	\begin{matrix}
        		a & b \\
        		c & d
        	\end{matrix}
        \right)
        
        =
        
        \left(
        	\begin{matrix}
        		a + 2c & b + 2d \\
        		3a + 6c & 3b + 6d
        	\end{matrix}
        \right)
        $$

    2. Debe verificarse que $A \cdot A^{-1} = I$, por tanto:

  $$
  A \cdot A^{-1} = I \Rightarrow
    \left(
    	\begin{matrix}
    		a + 2c & b + 2d \\
    		3a + 6c & 3b + 6d
    	\end{matrix}
    \right) =
    \left(
    	\begin{matrix}
    		1 & 0 \\
    		0 & 1
    	\end{matrix}
    \right) \Rightarrow
    \left\{
    	\begin{matrix}
    		a + 2c = 1 & b + 2d = 0 \\
    		3a + 6c = 0 & 3b + 6d =1
    	\end{matrix}
    \right.
  $$

* 3. Vemos que cualquiera de los dos pares de ecuaciones no tiene solución:

$$
\left\{
	\begin{aligned}
		a + 3c = 1\xrightarrow{\times 3} 3a + 6c = 3 \\
		3a + 6c = 0  \;\;\;\;\;\;3a + 6c = 0
	\end{aligned}
\right.
$$

​		4. Que claramente no puede tener solución.

​		5. Por tanto, la matriz $A = \begin{pmatrix}1  & 2\\3&6\end{pmatrix}$ no tiene matriz inversa.

### 3.4.2 Método de Gauss - Jordan

* El método de Gauss - Jordan para hallar la matriz inversa consiste en convertie la matriz inicial en la matriz identidad, utilizando **transformaciones elementales**.
    * ==Permutar **(对换,调换)** dos filas i y j. Lo escribimos como $F_i \leftrightarrow F_j$==
    * Sustituir la fila i por el resultado de multiplicar o dividir todos sus elementos por un número $a \neq 0$. Lo escribimos como $F_i = a \cdot F_i$
    * Sustituir la fila i por un múltiplo (no nulo) de ella más otra fila j multiplicada por un número b. Lo escribimos como $F_i = a \cdot F_i + b\cdot F_j$, con $a \neq0$.
* Ampliamos la matriz original, escribiendo junto a ella la matriz identidad, y aplicamos las transformaciones elementales de modo que la matriz inicial se transforme en la matriz identidad.















