row=5;col=4
M=[[1,2,3,1],[4,3,2,1],[1,2,4,5],[4,3,2,6],[1,2,7,4]]
sum1=0
for i in range(row):
    for j in range(col):
        print(M[i][j],end=" ")
        sum1+=M[i][j]
    print()
print(sum1)