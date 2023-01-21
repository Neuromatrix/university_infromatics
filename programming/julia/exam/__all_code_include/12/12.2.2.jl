function filling()
    mas = Array{Int64, 2}(undef, 11, 11)
    for i in range(1,11)
        for k in range(1, 11)
            mas[i, k] = 1
        end
    end
    return mas
end

function enter(mas)
    #view(mas,:,:) 
    for i in range(1,11)
        for k in range(1, 11)
            if (i >= k) && (i >= 11-k+1) || (i <= k) && (i <= 11-k+1) 
                print(mas[i, k], ' ')
            else
                print(0, ' ')
            end
        end
        println()
    end
end

mas = filling()
enter(mas)