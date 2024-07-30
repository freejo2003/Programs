# [ LITMUS7 - 2024 ] Autobot's leader Dr. Optimus Prime has discovered that only "S-type energons" are required for the Autobots to be operational. The calorific value of these energons is either a Galvatronic Number or the sum of two distinct Galvatronic Numbers. A Galvatronic Number is 2 raised to the power of a number which when represented in binary form, consists of exactly a single bit as 1.
# Write an algorithm to help Dr. Prime to calculate the total calorific value of all the "S-type energons" present in the given input.

# Input Format

# The first line of the input consists of an integer 'num', representing the count of the locations, where the energons are present(N).
# The next lines consists of N line-separated integers representing the calorific values of energons.

# Constraints

# 1 <= num <= 105
# 1 <= V <= 105; where V is the calorific value of an energon.

# Output Format

# Print an integer representing the total calorific value of all the "S-type energons".

# Sample Input 0

# 5
# 4
# 8
# 20
# 240
# 256
# Sample Output 0

# 288
# Explanation 0

# 4, 8 and 256 are Galvatronic numbers. 20 is the sum of two Galvatronic numbers (4 and 16).
# The output is 4 + 8 + 256 + 20 = 288

# Sample Input 1

# 10
# 1
# 3
# 8
# 9
# 4
# 10
# 11 
# 16
# 5
# 7
# Sample Output 1

# 56
num=int(input())
sum=0
for i in range (num):
    n =int(input())
    a=(bin(n)[2:])
    a=str(a)
    one=a.count("1")
    if one == 1 or one == 2:
        sum+=n
print(sum)
    
    