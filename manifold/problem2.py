#remove vowels from right side till encountering a digit
str1="a 1 e 2 o 3iU How Are You?"
str2=""
a=0
for i in range(len(str1)-1,-1,-1):
    if str1[i].isdigit():
        break
    if str1[i] not in "AEIOUaeiou":
        str2=str2+str1[i]
str2=str2+str1[i: :-1]

print(str2[: :-1])

