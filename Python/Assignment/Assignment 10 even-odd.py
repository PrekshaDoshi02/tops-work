# find given number is odd or even ;

num=int(input("enter a number - "))
if num/2==0:
    print(num,"is even")
    print(f"{num} is even")
else:
    print(f"{num} is odd")

# other way ;
for i in range(1,10,2):
    print(i,"number is odd")
for i in range(0,10,2):
    print(i,"number is even")