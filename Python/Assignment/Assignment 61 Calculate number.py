# To Calculate the Factorial of a Number....
def factorial(n):
    if n < 0:
        raise ValueError("Factorial is not Defined for negative integers.")
    elif n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n-1)
#print(factorial(5))