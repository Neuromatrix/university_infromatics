s = split(readline(),".")
Maxstr = ()
Minstr = ()
LenMaxstr = 0
LenMinstr = 10000000000000
for i in enumerate(s)
    global Maxstr
    global LenMaxstr
    global Minstr
    global LenMinstr
    if length(i[2]) > LenMaxstr
        LenMaxstr = length(i[2])
        Maxstr = i
    end
    if length(i[2])<LenMinstr
        LenMinstr = length(i[2])
        Minstr = i
    end
end

s[Maxstr[1]] = Minstr[2]
s[Minstr[1]] = Maxstr[2]

println(join(s,"."))

