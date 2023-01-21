# вопросы: объявление новой структуры считать как подпрогу?

mutable struct info
        name::String
        age::Int
        

        function info(name, age)
            new(name, age)
        end
end

function input(f)
    mas = []
    while (!eof(f))#end of file
        str = readline(f)
        name = split(str, " ")[1]
        age = parse(Int, split(str, " ")[2])
        push!(mas, info(name, age))
    end
    close(f)
    return mas
end

function get(mas) #(дать: сет, вернуть: сет с городами на А)
    new_mas = []
    for i in range(1, length(mas))
        if mas[i].name[1] == 'A' 
            push!(new_mas, mas[i])
        end
    end
    return new_mas
end

function new_file_add(new_mas)
    open("new_data.txt", "w") do file
        for i in range(1, length(new_mas))
            println(file, new_mas[i].name, " ", new_mas[i].age)
        end
    end
    #return file
    return open("C:/Users/Lenovo/Desktop/Данные/User/Desktop/Study/Programming/Julia/Laba4/new_data.txt", "r")
end

function output(f)
    while (!eof(f)) #end of file8/
        str = readline(f)
        println(str)
    end
    println()
    close(f) 
end

f = open("C:/Users/Lenovo/Desktop/Данные/User/Desktop/Study/Programming/Julia/Laba4/data.txt", "r")
new_mas = get(input(f))
new_file_add(new_mas)

println("File:")
output(open("C:/Users/Lenovo/Desktop/Данные/User/Desktop/Study/Programming/Julia/Laba4/data.txt", "r"))

println("New file:")
output(new_file_add(new_mas))

a = get([info("Strop", 1200), info("Art", 20), info("Krop", 4300), info("Astra", 30)])
b = [info("Art", 20), info("Astra", 30)]
c = info("Art", 20)
d = info("Art", 20)
print(isequal(c, d))
