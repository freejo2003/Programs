str1="@@MATHEW###MATHEW@@"
dict1={}
for i in range(len(str1)):
    if str1[i] in dict1:
        dict1[str1[i]]=dict1[str1[i]]+1
    else:
        dict1[str1[i]]=1
for key in sorted(dict1):
    print(key,dict1[key])