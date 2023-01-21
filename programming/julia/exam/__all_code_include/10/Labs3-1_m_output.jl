module Module_Resulting
    function Resulting(symbols,indexes)
        res= []
        for i in range(1,length(symbols))
            push!(res,symbols[i]*string(indexes[i+1]))
        end
        return join(res," ")
    end 
end