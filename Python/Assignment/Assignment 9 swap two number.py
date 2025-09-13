# swapping two numbers use of temp variable and without temp variable ;

# with use of temp variable ;
a=10
b=20
Temp = a
a = b
b = Temp
print(f"a: {a}, b: {b}")

# without use of temp variable ;
a=25
b=45
#a=b
#b=a
print(f"b: {a}, a: {b}")