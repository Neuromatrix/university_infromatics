module Calculator
function get_min(matrix)
    res = 99999999
    for row in matrix 
        for col in row
            if col < res
                res = col
            end
        end
    end
    return res
end
end