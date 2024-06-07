#sum of numbers
numbers=input("Enter numbers with space:")

num_list=numbers.split()

sum=0

for num in num_list:
    sum+=int(num)

print(f"Total sum is {sum}")