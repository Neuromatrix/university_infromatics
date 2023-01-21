module Symbols
    function GetSymbol(arr,startsymbol)
        symbols = []
        for i in enumerate(arr)
            if startsymbol != i[2]
                push!(symbols, startsymbol)
                startsymbol = i[2]
            end 
        end
        return symbols
    end 
end