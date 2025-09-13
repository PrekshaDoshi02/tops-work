# Factorial number programme-Assignment 5

start=int(input("enter a number"))
factoriel=1

#check if number is negetive ; this condition part is optional, we can do directly use of for loop ;
if start<0:
    print("factorial does not work for negetive numbers")
elif start == 0:
    print("the factorial of 0 is 1")
else:
    for i in range(1,start+1):
        factoriel*=i
    print(factoriel)
print(f"the factorial of {start} is {factoriel}")