def prime?(num)
    for i in (2..Math.sqrt(num)+1) do
        if num%i==0
            return false
        end
    end
    return true
end

print(prime?(11))