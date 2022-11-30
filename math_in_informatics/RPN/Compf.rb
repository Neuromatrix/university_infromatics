#encoding: utf-8

require './Stack.rb'

# Класс Compf выведен из класса Stack и имеет методы
# всех трёх типов доступа: public, protected и private.
#
# Компилятор допускает только однобуквенные имена переменных!
#
class Compf < Stack
  # Последовательный вызов для всех символов строки str
  # метода processSymbol.
  def compile(str)
    "(#{str})".each_byte { |c| processSymbol(c.chr) }
  end

  private

  def symType(c)
    case c
    when '('
      SYM_LEFT
    when ')'
      SYM_RIGHT
    when '+', '-', '*', '/'
      SYM_OPER
    else
      symOther(c)
    end
  end

  def processSymbol(c)
    case symType(c)
    when SYM_LEFT
      push(c)
    when SYM_RIGHT
      processSuspendedSymbol(c)
      pop
    when SYM_OPER
      processSuspendedSymbol(c)
      push(c)
    when SYM_OTHER
      nextOther(c)
    end
  end

  def processSuspendedSymbol(c)
    while precedes(top, c)
      nextOper(pop)
    end
  end

  def priority(c)
    (c == '+' or c == '-') ? 1 : 2
  end

  def precedes(a, b)
    return false if symType(a) == SYM_LEFT
    return true  if symType(b) == SYM_RIGHT
    priority(a) >= priority(b)
  end

  # Квалификатор доступа protected и метод nextOther
  # нужны для создания на базе класса Compf нового класса
  # Calc, реализующего калькулятор формул (хотя в языке
  # Ruby в данном случае можно убрать "protected", тем
  # самым размещая все нижеописываемые константы и методы
  # в зоне действия квалификатора private, в языках Java
  # и C++ здесь нужен именно квалификатор protected).
  protected

  SYM_LEFT  = 0; SYM_RIGHT = 1; SYM_OPER  = 2; SYM_OTHER = 3

  def symOther(c)
    # Сравнение символа с образцом (регулярным выражением).
    raise "Недопустимый символ #{c}" if c !~ /[a-z]/
    SYM_OTHER
  end

  def nextOper(c)
    print "#{c} "
  end

  def nextOther(c)
    nextOper(c)
  end
end
