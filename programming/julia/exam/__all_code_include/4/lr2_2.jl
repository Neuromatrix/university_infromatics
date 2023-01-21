#lr2_2
function ParallelogramOutput(Array)
  c = 0
  for i in range(1, size(Array)[1])
    for j in range(1, size(Array)[2])
      for k in range(1, size(Array)[3])
        print(Array[i, j, k], " ")
      end
      if j % 3 == 0
        c += 1
        print("\n", " "^c)
      end
    end
  end
end

alph = "QWERTYUIOPASDFGHJKLZXCVBNM1234567890"
L = [alph[rand(1:36)] for x=1:8, y=1:6, z=1:4]
ParallelogramOutput(L)
