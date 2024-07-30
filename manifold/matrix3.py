#transpose 2d matrix
row =int(input())
col =int(input())
M=[[int(input())for j in range(col)]for i in range(row)]
T=[[0 for i in range(row)]for j in range (col)]
for j in range(col):
    for i in range(row):
        T[j][i]=M[i][j]
        print(T[j][i],end=" ")
    print()