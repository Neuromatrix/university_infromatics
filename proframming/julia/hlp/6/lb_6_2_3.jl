sent = split(readline(),".")
n = size(sent)[1]
cnt = 0
for i in 1:n
    words = count(k->(k!=""),split(sent[i]," "))
    if words >=3
        global cnt+=1
    end
end
println(cnt)
