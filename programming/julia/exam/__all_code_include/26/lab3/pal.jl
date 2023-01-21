module Pal
function palindrom(str)
    count = 0
    k = 1
    for i in str
        for j in 1:(length(i) ÷ 2)
            if i[j] == i[length(i) - j + 1]
                continue
            else
                k = 0
                break
            end
        end
        if k == 1
            count +=1
        end
        k = 1
    end
    return count
end
end
