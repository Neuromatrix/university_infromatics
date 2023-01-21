#lr2_1
using Test

function IsInverse(fir_n, sec_n)
  if fir_n > sec_n
    return true
  else
    return false
  end
end

function InverseCount(array)
  inv_count = 0
  for i in range(2, length(array)) # Основной цикл посчета количества инверсий
    if IsInverse(array[i-1], array[i])
      inv_count += 1
    end
  end
  return inv_count
end

println("Введите подряд через пробел 20 чисел: ") # Задаем массив чисел
n = split(readline())
n = map(x->parse(Int64, x), n)

println(InverseCount(n))
@testset "IsInverseTest" begin
  @test IsInverse(9, 5) == true
  @test IsInverse(5,9) == false
end
@testset "InverseCountTest" begin
  @test InverseCount([1,2,3,4,5,7,6]) == 1
  @test InverseCount([89, 37, 49, 62, 87, 28, 72, 55, 19, 25, 48, 99, 51, 39, 38, 20, 61, 92, 48, 78]) == 9
  @test InverseCount([10, 35, 25, 74, 76, 35, 91, 23, 59, 28, 7, 90, 11, 15, 35, 54, 12, 80, 65, 78]) == 8
end
