const offset = 30

function main()
    matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12], [13, 14, 15], [16, 17, 18]]
    line_idx = 1
    
    for i in 1:2:lastindex(matrix)
        output = ""
        row = matrix[i]
        for j in 1:lastindex(row)
            output *= string(row[j]) * " "
        end
        output *= repeat(" ", offset - length(output))
        for j in 2:2:lastindex(matrix)
            row = matrix[j]
            output *= string(row[line_idx]) * " "
        end
        println(output)
        line_idx += 1
    end
end

main()