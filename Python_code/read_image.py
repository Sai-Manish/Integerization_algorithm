import numpy as np
import matplotlib.pyplot as plt
from PIL import Image, ImageOps

data = Image.open("test_image.png")
grayscale = ImageOps.grayscale(data)
# data.show()

data_array = np.array(grayscale)
data_array = data_array.astype(np.uint8)

# plt.imshow(data_array, cmap="gray")
# plt.show()

header = "uint8_t image[262144] = {"
footer = "};"
np.savetxt("a.h", data_array.reshape(-1), comments="", header=header, footer = footer, fmt="%d", newline=",")