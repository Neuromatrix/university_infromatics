println("Input 6 words with length = 6")
s = split(readline())
print("Starting string: ")
for i in s
    print(i, " ")
end
print("\n")

s_ans = ""

count_ = 0
for i in s
    for j in i
        if j in "adeADE"
            count_ += 1
            break
        end
    end
    if count_ != 0
        global s_ans = s_ans * i * " "
    end
    global count_ = 0
end

if length(s_ans) != 42
    println("Final string: ", s_ans)
else
    println("No one string, starting string = final string")
end