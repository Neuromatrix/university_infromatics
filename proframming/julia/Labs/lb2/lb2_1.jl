n = parse(Int32,readline())

p = parse(Int32,readline())
q = parse(Int32,readline())
cnt = 0
for i in 1:n
    tmp = split(readline()," ")
    x = parse(Int32,tmp[1])
    y = parse(Int32,tmp[2])
    a = parse(Int32,tmp[3])
    if (x<=p) & (p<=x+a) & (y-a<=q) & (q<=y)
        println(i)
        cnt = cnt +1
    end
end
if (cnt == 0)
    println("NOTH")
end

