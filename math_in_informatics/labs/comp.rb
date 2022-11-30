#encoding: utf-8

class RecursComp
  def compile(str)
    @str,@index = str,0
    compileF
  end

  #private

  def compileF
    #print "f#{@index}f"
    compileT
    return if @index >= @str.length
    cur = @str[@index].chr
    #print "#{cur} p\n"
    if cur == '+' or cur == '-'
      @index += 1
      compileF
      print "#{cur} "
    end
  end
  def compileT
    compileM
    return if @index >= @str.length
    cur = @str[@index].chr
    if cur == '*' or cur == '/' or cur =='%'
        @index += 1
        compileT
        print "#{cur} "
    end
  end
  def compileM
    #print "m#{@index}m"
    cur = @str[@index].chr
    if @str[@index].chr == '(' or @str[@index].chr == '{' or @str[@index].chr == '['
      @index += 1
      compileF
      @index += 1
    else
      compileV
    end
  end
  def compileV
    print "#{@str[@index].chr} "
    @index += 1
  end
end
def removecomments(s)
  res = ""
  l = s.length
  comnow = 0
  i = 0
  while i < l
    if s[i]=='*' and s[i+1] == '/'
      i+=2
      comnow = 0
    elsif s[i]=='/' and s[i+1] == '*'
      comnow = 1
      i+=2
      next
    end
    if comnow == 1
      i+=1
      next
    end
    if s[i]=='/' and s[i+1] == '/'
      return res
    end
    res+=s[i]
    i+=1
  end
  return res
end
c = RecursComp.new
while true
  print "Введите формулу: "
  str = readline.chomp.delete(' ')
  str = removecomments(str)
  c.compile(str) #without \n
  print "\n"
end

