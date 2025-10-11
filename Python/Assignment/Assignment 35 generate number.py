# Write a Python program to generate and print a list of first and last 5 elements where the values 
# are square of numbers between 1 and 30. 
lst = []
for i in range(1,31):
    lst.append(i*i)
print("First 5 elements : ",lst[0:5])
print("Last 5 elements : ",lst[-5:])
print("First 5 elements : ",tuple(lst[0:5]))
print("Last 5 elements : ",tuple(lst[-5:]))