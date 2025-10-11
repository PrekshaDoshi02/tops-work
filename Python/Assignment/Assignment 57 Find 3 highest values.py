# To Find the Highest 3 Values in a Dictionary....
dict1 = {'a':3,'b':4,'c':2,'d':8,'e':5,'f':9}
values = sorted(dict1.items(), key=lambda item: item[1], reverse=True)[:3]
for key,values in values:
    print(f"{key}:{values}")
