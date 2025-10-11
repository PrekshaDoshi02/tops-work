# Create a Dictionary From a String....
#from collections import Counter
string = "Preksha"
count = {}
for i in string:
    if i in count:
        count[i] += 1
    else:
        count[i] = 1
print(count)

string1 = "w3resource"
count1 = {}
for i in string1:
    if i in count1:
        count1[i] += 1
    else:
        count1[i] = 1
print(count1)


#count = Counter(string)
#print(count)