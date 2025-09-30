""" Podemos representar matrizes com listas de listas. Por exemplo: M = [ [1, 2, 3, 4], [5, 6, 7, 8]] representa uma matriz de 2×4 (2 linhas e 4 colunas).

Complete as funções pedidas para manipulação de matrizes.

Complete matcols(M) para devolver o número de colunas da matriz M. Admita que M tem uma ou mais linhas todas com a mesma dimensão.
Altere matzeros(m, n) para devolver uma matriz com m×n elementos nulos. A matriz resultante deve poder ser alterada elemento a elemento.
Complete matmult(A, B) para devolver o produto matricial AB."""

# Devolve o número de linhas da matriz M.
def matrows(M):
    return len(M)

# Complete para devolver o número de colunas da matriz M.
def matcols(M):
    return len(M[0])

# Complete a função para devolver uma matriz com m×n zeros.
def matzeros(m, n):
 #  M = n * [0]   # MODIFY THIS...
    M = []
    for i in range(m):
        M.append(n*[0])
    return M



def matzerosTEST(m, n):
    M = matzeros(m, n)
    M[0][1] = 1   # should change just 1 element!
    return M

# Complete a função para multiplicar a matriz A pela matriz B.
def matmult(A, B):
    assert matcols(A) == matrows(B)
#VER ISTO MELHOR:
    C = [[sum(a * b for a, b in zip(A_row, B_col))
          for B_col in zip(*B)]
         for A_row in A]

    return C

def matmultTEST(A, B):
    C = matmult(A, B)
    return A, B, C
