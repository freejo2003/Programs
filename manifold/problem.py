#print last 10 digits in given string ,also in given order string may have alphabets,numbers,delimiters
str1="987-af-6-gh-98743210,ppp,56789-rrr"
a=0
str2=""
for i in range(len(str1)-1,0,-1):
    if a==10:
        break
    if str1[i].isdigit():
            str2=str2+str1[i]
            a+=1
for i in range(len(str2)-1,-1,-1):
    print(str2[i],end="")