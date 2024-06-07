import numpy as np

# Creating a 3D array using numpy.array()
arr = np.array([
    [[1, 2, 3], [4, 5, 6]],
    [[7, 8, 9], [10, 11, 12]]
])
print("3D Array using numpy.array():\n", arr)

# Creating a 3D array of zeros
zeros_arr = np.zeros((2, 2, 3))
print("\n3D Array of zeros:\n", zeros_arr)

# Creating a 3D array of ones
ones_arr = np.ones((2, 3, 4))
print("\n3D Array of ones:\n", ones_arr)
