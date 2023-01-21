#lr4_1
function createF()
    F = open("F.txt","w")
    write(F, "ab hoc et ab hac imo pectore ad patres urbi et orb sub specie aeternitatis post hoc ergo propter hoc qui pro quo")
    close(F)
end
function readF()
    F = open("F.txt", "r")
    words = split(readline(F), " ")
    close(F)
    return words
end
function createG()
    G = open("G.txt","w")
    words = readF()
    for i in 1:size(words)[1]
        if length(words[i]) > 3
            write(G, words[i], " ")
        end
    end
    close(G)
end
function outputF()
    createF()
    F = open("F.txt")
    println("Ваш файл F:")
    while (!eof(F))
        println(readline(F))
    end
    close(F)
end
function outputG()
    createG()
    G = open("G.txt")
    println("Ваш файл G:")
    while (!eof(G))
        println(readline(G))
    end
    close(G)
end
outputF(),outputG()
