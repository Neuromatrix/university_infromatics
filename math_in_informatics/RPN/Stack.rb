#encoding: utf-8

# Стек в Ruby может содержать любые объекты, а
# в данном проекте в него помещаются символы
# (в Ruby их роль играют одноэлементные строки).
class Stack
  def initialize
    @array = Array.new
  end
  
  def push(c)
    @array.push(c)
  end

  def pop 
    @array.pop
  end
  
  def top
    @array.last
  end
end
