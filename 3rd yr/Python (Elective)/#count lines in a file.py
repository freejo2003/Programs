#count lines in a file
files='sample.txt'
with open(files,'r') as file:
    line_count=sum(1 for line in file)
print("Number of lines in ",file ,":",line_count)