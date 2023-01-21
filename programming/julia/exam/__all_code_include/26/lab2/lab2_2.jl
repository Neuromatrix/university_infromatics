n = parse(Int16, readline())
m = 2 * n
if (n > 10) || (n < 2)
    println("Try to input another number, 2 <= n <= 10")
else
    arr = [y = [x = "*" for x in 1:n] for y in 1:n]
    count_ = 2
    for i in 1:n
        for j in 1:n
            print(arr[i][j], " ")
        end
        print("\n")
    end 
    for i in 1:(2 * n - 1)
        for l in 1:abs(n - i)
            print(" ")
        end
        for j in 1:n
            for k in 1:n
                if j + k == count_
                    print(arr[j][k], " ")
                end
            end
        end
        global count_ += 1
        for l in 1:abs(n - i)
            print(" ")
        end
        print("\n")
    end

end
