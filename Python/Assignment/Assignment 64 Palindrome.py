name = input("Enter a String : ")
#using slicing
reversed_name = name[::-1]
if name == reversed_name:
    print("The string is a Palindrome...")
else:
   print("The string is not a Palindrome...")


def is_Palindrome(s):
    # .lower() - for convert string in lowercase...
    #replace is using for remove a space....
    s = s.replace(" ","").lower()#optional
    return s == s[::-1] # it is checking if original string equal to reverse string...
print(is_Palindrome("Mada     m"))
print(is_Palindrome("hello"))