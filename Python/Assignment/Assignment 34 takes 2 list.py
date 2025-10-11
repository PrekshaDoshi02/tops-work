# Write a Python function that takes two lists and returns true if they
# have at least one common member. 
lst = [1,2,3,4,5]
lst1 = [3,4,5,6,7]
co_no = True
for i in lst:
    if i in lst1:
        co_no = True
        break
print(co_no)