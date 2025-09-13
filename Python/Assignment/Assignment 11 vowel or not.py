# passed letter is vowel or not ;
ltr=['aeiou']
letter=input("enter a letter")
letter1=["a","e","i","o","u"]
flag=0
#print(f"{"te" in letter1}")
for i in letter:
    if i in letter1:
        print("Vowel")
        flag=0
        break
    else:
        flag=1
if flag==1:
    print("Threr is no vowel")


    
# if ltr in letter1:
#     print("is vowel")
# else:
#     print("is not vowel")