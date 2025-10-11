# Write a Python program to add 'in' at the end of a given string (length
# should be at least 3). If the given string already ends with 'ing' then
# add 'ly' instead if the string length of the given string is less than 3,
# leave it unchanged.  
name = input("Enter a name : ")
if len(name) < 3:
    print(name)
elif len(name) > 3 and name.endswith("ing"):
    print(name + "ly")
else:
    print(name + "in")   