# To Merge two Python Dictionaries....
dict1 = {'Preksha'}
dict2 = {'Doshi'}
new_dict = dict1 | dict2
print(new_dict)

dict3 = dict1.copy()
dict3.update(dict2)
print(dict3)