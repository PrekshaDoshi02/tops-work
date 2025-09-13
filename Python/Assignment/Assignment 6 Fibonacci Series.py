number = int(input("Enter a number - "))
a = [0]
b = 1
lst_num = []
if number == 1:
    print(a)
else:
    print(a,b)
    #print(b)
for i in range(0,number+1): #number-1
    c=a+b
    a=b
    b=c
    print(c)
    lst_num.append(c,a,b)
    
print(lst_num)