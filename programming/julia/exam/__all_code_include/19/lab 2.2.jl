mas = [repeat([repeat(["!"], 10)], 10), repeat([repeat(["?"], 10)], 10)]
res = repeat([repeat(["0"], 20)], 10)
for i in 1:2
  for j in 1:10
    for k in 1:10
        res[j][(i-1) * 10 + k] = mas[i][j][k]
    end
  end
end

for i in 1:10
    for j in 1:10
        print(res[i][j], res[i][j + 10])
    end
   println()
end
