#encoding: utf-8

require './Compf.rb'

class Calc < Compf
  def initialize
    # Вызов метода initialize базового класса Compf.
    super
    # Создание стека результатов операций.
    @s = Stack.new
  end

  def compile(str)
    super
    puts str
    puts @s.top
  end

  protected

  def symOther(c)
    raise "Недопустимый символ #{c}" if c !~ /[0-9]/
    SYM_OTHER
  end

  def nextOper(c)
    # В языке Ruby при выполнении множественного (параллельного)
    # присваивания СНАЧАЛА ПОСЛЕДОВАТЕЛЬНО вычисляются все выражения
    # в правой части оператора присваивания.
    second,first = @s.pop,@s.pop
    # Конструкция "first.method(c).call(second)" может быть объяснена
    # таким примером: выражение "3.metod('-').call(2)", эквивалентно
    # выражению "3.-(2)" или просто "3-2".
    @s.push(first.method(c).call(second))
  end

  def nextOther(c)
    @s.push(c.to_i)
  end
end
