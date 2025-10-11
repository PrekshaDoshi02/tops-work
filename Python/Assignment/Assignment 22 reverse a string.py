# Write a Python function to reverses a string if its length is a multiple of 4. 
name = input("Enter a name :")
if len(name) % 4 == 0:
    print(name[::-1])
    print(name)