#write code foor finding max rows sum and the row index which contains the max row sum of elements.
row=5;col=4
M=[[1,2,3,1],[4,3,2,1],[1,2,4,5],[4,3,2,6],[1,2,7,4]]
maxrs=float('-inf');maxrsi=-1
for i in range(row):
    crs=0
    for j in range(col):
        crs+=M[i][j]
    if crs>maxrs:
        maxrs=crs
        maxrsi=i
print(maxrs,maxrsi)