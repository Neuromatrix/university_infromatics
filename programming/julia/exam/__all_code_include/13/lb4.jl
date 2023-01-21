function rev(s)
    s=reverse(s)
end
f=open("C://Проги//Университет//Julia//Labs 1st sem//lab 4//f.txt")
function progr()
    s=read(f,String)
    s=rev(s)
    g=open("C://Проги//Университет//Julia//Labs 1st sem//lab 4//g.txt", "w")
    print(s)
    write("C://Проги//Университет//Julia//Labs 1st sem//lab 4//g.txt",s)
end
progr()
using Test
@testset "mod_test" begin
    @test rev("abc") == "cba" 
end
