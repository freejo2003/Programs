#find the slot grater than given duration son that it can fit in between the time periods given
estr="(08:00,09:45)(10:05,10:55)(11:10,11:45)(12:50,13:00)(14:10,17:00)"
dur="01:05"
a=0
dur=dur.replace(":",".")
estr=estr.replace(")("," ")
estr=estr.replace(","," ")
estr=estr.replace(":",".")
estr=estr=estr[1:len(estr)-1]
elist=estr.split()
print(elist)
for i in range(2,len(elist),2):
    a=float(elist[i])
    b=float(elist[i-1])
    if a-int(a)<b-int(b):
        a=a+.60-1
    diff=a-b
    if round(diff,2)>float(dur):
        print(f"{b:.2f}")
        break