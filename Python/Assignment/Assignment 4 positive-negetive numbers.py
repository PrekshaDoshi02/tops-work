# check positive-negetive numbers;

number=int(input("enter a number - "))

if number>0:
    print(f"{number} is positive.")
elif number<0:
    print(f"{number} is negetive.")
else:
    print(f"{number} is zero.")