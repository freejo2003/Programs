# Write a program to check whether two given strings are anagram of each other or not. An anagram of a string is another string of same length and contains same characters, only the order of characters can be different. For example, “abcd” and “dabc” are anagram of each other."silent" and "listen" are also anagram of each other.
# Expected Time complexity is O(n) and Auxiliary Space Complexity is O(n).

# Input Format

# First string "m" of length 'M' and the second string "n" of length 'N' are already taken as inputs.
# You are not supposed to take any input.

# Constraints

# NA

# Output Format

# Return "YES" if the two strings are anagram of each other or else return "NO".

# Sample Input 0

# catc
# acta
# Sample Output 0

# NO
# Sample Input 1

# listen
# silent
# Sample Output 1

# YES


#hint use sorted function on m and n stringsand equate that return yes or no
m=input()
n=input()
dict1={}
dict2={}
for ele in m:
    if ele in dict1:
        dict1[ele]=dict1[ele]+1
    else:
        dict1[ele]=1
for ele in n:
    if ele in dict2:
        dict2[ele]=dict2[ele]+1
    else:
        dict2[ele]=1
if(dict1==dict2):
    print("YES")
else:
    print("NO")