using Test
mutable struct Intermediate
    sequence::Vector
    odd_elements::Vector
    results::Vector
    Fvector::Vector
    Gvector::Vector
end
intermediate = Intermediate([],[],[],[],[])

###########################################
function Reading()
    file = open("F.txt")
    for line in eachline(file)
        push!(intermediate.sequence,parse(Int64,line))
    end
    close(file)
end
function Crutch()
    if intermediate.sequence[end]%2 != 0
        push!(intermediate.sequence,0)
    end
end
###########################################
function FindOdd()
    for i in enumerate(intermediate.sequence)
        if i[2]%2!=0
            push!(intermediate.odd_elements,i[1])
        end
    end
end
###########################################
function Calc()
    for i in intermediate.odd_elements
        push!(intermediate.results,intermediate.sequence[i]+intermediate.sequence[i+1])
    end
end
###########################################
function Writing()
    file = open("G.txt","w")
    for i in intermediate.results
        write(file,string(i)*"\n")
    end
    close(file) 
end
#########################################
function Output()
    file = open("F.txt")
    for line in eachline(file)
        push!(intermediate.Fvector,line)
    end  
    close(file)

    file = open("G.txt")
    for line in eachline(file)
        push!(intermediate.Gvector,line)
    end
    close(file)
    println("Содержимое F: ",intermediate.Fvector)
    println("Содержимое G: ",intermediate.Gvector)
end

#########################################
function main()
    Reading()
    Crutch()
    FindOdd()
    Calc()
    Writing()
    println(intermediate.results)
    Output()
end

main()

# F: 1,2,3,4,5
# G: 3 7 5
# @testset "test" begin
#     Reading()
#     @test intermediate.sequence == [1, 2, 3, 4, 5]
#     Crutch()
#     @test intermediate.sequence == [1, 2, 3, 4, 5, 0]
#     FindOdd()
#     @test intermediate.odd_elements == [1, 3, 5]
#     Calc()
#     @test intermediate.results == [3, 7, 5]
# end
