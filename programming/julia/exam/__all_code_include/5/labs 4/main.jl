module MyModule

include("module.jl")
using .Work_with_file
using Test

create_F()
text = read_file("F.txt")
result = rewrite(text)
write_file(result, "G.txt")
println(read_file("F.txt"))
println(read_file("G.txt"))
@testset "MyTest" begin
    @test rewrite(["89", "16", "59", "49", "98", "38", "60", "64", "28"]) == ["16", "49", "38", "64"]
    @test rewrite(["90", "81", "55", "43", "10", "48"]) == ["81", "43", "48"]
end
end