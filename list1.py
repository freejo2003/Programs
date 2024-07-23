# Mr. Geek was given a list of marks scored by the students who attended a test. Teacher wants Geek to arrange all the marks in the same order but he has to move all the zeros to the end of the list and find the average marks excluding the zero mark scored students. Average marks should be appended at the end of output list. He can ignore the decimal part of the average marks while appending. As a programmer you are asked by the Geek to help him to write a code for doing the same.
# Expected Time complexity is O(n) and Auxiliary Space Complexity is O(1).

# Sample Input and Output:
# Input: 45 30 0 25 10 0 90 95 0 50
# Output: 45 30 25 10 90 95 50 0 0 0 49

# Input Format

# Size of the array(N) and line separated array input elements are already taken.
# An array is made out of those elements and given the name "marks" and is given as input parameter to the function.
# You are not supposed to take any input.

# Constraints

# NA

# Output Format

# Return the list with all the test marks in the same order as in the input list after pushing all the zero marks towards the end of the list.
# The average marks excluding the zero mark scored students should have been appended to the returning list.

# Sample Input 0

# 5
# 1 
# 0 
# 2 
# 0 
# 3 
# Sample Output 0

# 1 2 3 0 0 2
# Sample Input 1

# 10
# 100 
# 90 
# 80 
# 0 
# 0 
# 70 
# 60 
# 0 
# 50 
# 40 
# Sample Output 1

# 100 90 80 70 60 50 40 0 0 0 70

n = int(input().strip())
marks = [int(input().strip()) for _ in range(n)]

# Remove zeros and count them
cnt = marks.count(0)
marks = [mark for mark in marks if mark != 0]

# Calculate the average
if marks:  # Ensure there are non-zero marks to avoid division by zero
    avg = sum(marks) // len(marks)
else:
    avg = 0  # Define what to do if all marks were zero

# Append the zeros back and add the average
marks.extend([0] * cnt)
marks.append(avg)

print(marks)

