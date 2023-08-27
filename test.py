# function to calculate the distance between two points

import math

def distance(x1, y1, x2, y2):
    return math.sqrt((x2-x1)**2 + (y2-y1)**2)

print(distance(0, 0, 3, 4))
print(distance(0, 0, 1, 1))
print(distance(0, 0, 0, 0))
print(distance(0, 0, 5, 5))
print(distance(0, 0, 10, 10))
print(distance(0, 0, 100, 100))
print(distance(0, 0, 1000, 1000))
print(distance(0, 0, 10000, 10000))