# To check whether a list contains a sub list.....
lst_names = ['Preksha','Google',2.7,['Hp',16]]
for i in lst_names:
    if type(i) is list:
        print("List contains sub list")
        break