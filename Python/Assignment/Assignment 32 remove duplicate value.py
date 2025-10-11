# to remove duplicates from a list....;
# with loop statement ; - task12.py;
my_lst = ['1','2','3','2','1']
my_lst1 = []
for i in my_lst:
    if i not in my_lst1:
        my_lst1.append(i)
print(my_lst1)

