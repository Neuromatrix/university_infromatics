module Main
include("file.jl")
words = File.input()
File.write_file(words)
File.new_file()
end
