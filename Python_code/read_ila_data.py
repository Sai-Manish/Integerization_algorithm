import numpy as np

np.random.seed(6)
data = np.random.randint(0, 256, size =(3, 4))

rows, cols = data.shape
print(data)
print(data.reshape(-1))
print()
print(data[1, 1])
print(data.reshape(-1)[1*cols + 1])