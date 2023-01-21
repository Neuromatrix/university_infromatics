#lr2_3
function IsFormatedWord(word, first = "", last = "")
  if in(word[1], first) && in(word[length(word)], last)
    return true
  else
    return false
  end
end

print("Введите количество слов в вашей строке: ")
n = parse(Int64, readline())
print("Введите вашу строку из ", n, " слов: ")
string_ = split(readline())
if length(string_) != n
  println("Количество слов не совпадает с введенным!")
end

words = []
for i in string_
  if IsFormatedWord(i, "A", "E")
    push!(words, i)
  end
end

print(length(words))
