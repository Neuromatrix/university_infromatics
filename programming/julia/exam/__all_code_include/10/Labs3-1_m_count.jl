module Module_GetCount
    function GetCount(arr,startsymbol)
        indexes = [0]
        for i in enumerate(arr)
            if startsymbol != i[2]
                push!(indexes, i[1]-1 - sum(indexes))
                startsymbol = i[2]
            end 
        end
        return indexes
    end 
end