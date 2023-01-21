module Meow

export readfile, writefile, book, output
#Чтение файла
function readfile(name)
    open(name) do f
        text = readlines(f)
        return text
    end
end
#Запись в файл
function writefile(name, text)
    open(name, "w") do f
        for i in text
            write(f, i, "\n")
        end
    end
end
#Отбор нжуных нам данных по году издания книги
function book(text, year)
    result = []
    for i in text
        if parse(Int16, split(i, "; ")[3]) == year
            push!(result, i)
        end
    end
    return result
end
#Вывод содержимого файла
function output(name)
    open(name) do f
        for i in readlines(f)
            println(i)
        end
    end
end
end
module MyModule
#Путь к нашему модулю
# include("modul.jl")
#Используем модуль с нашими функциями
using .Meow
#Используем пакет тестов
using Test
#Считваем с консоли год издания книги
print("Введите год издания книги: ")
n = parse(Int16, readline())
#Считываем данны их файла F.txt
text = readfile("F.txt")
#Отбираем нжуные нам данные по году издания книги
result_book = book(text, n)
#Записываем отобранные данные в файл G.txt
writefile("G.txt", result_book)
#Выводим эти файлы в консоль
println("Содержимое фала F.txt")
output("F.txt")
println()
println("Содержимое фала G.txt")
output("G.txt")
@testset "MyTest" begin
    text = ["Капитанская дочка; А.С. Пушкин; 1836", "Повести Белкина; А.С. Пушкин; 1830", "Скупой рыцарь; А.С. Пушкин; 1830", "Пир во время чумы; А.С. Пушкин; 1830", "Ревизор; Н.В. Гоголь; 1836"]
    @test book(text, 1830) == ["Повести Белкина; А.С. Пушкин; 1830", "Скупой рыцарь; А.С. Пушкин; 1830", "Пир во время чумы; А.С. Пушкин; 1830"]
    @test book(text, 1836) == ["Капитанская дочка; А.С. Пушкин; 1836", "Ревизор; Н.В. Гоголь; 1836"]
end
end



