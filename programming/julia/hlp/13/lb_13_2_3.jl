n = parse(Int32,readline())
t = ""
for i in 1:n
    global t= string(t,(read(stdin,Char)))
end
str = split(t," ")

l = size(str)[1]
cnt = 0
for i in 1:l
    if str[i][1]==str[i][length(str[i])]
        global cnt += 1
    end
end

println(cnt)
