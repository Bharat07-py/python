l=[1,2,3,4,32,5,6,7,9]
l1=l[0]

for i in l:
    if i>l1:
        l1=i
print(l1)

def convertTempFC(temp):
    return  temp*3/5    +32