#encoding: utf-8

require './Calc.rb'

c = Calc.new
while true
  print "Введите формулу: "
  c.compile(readline.chomp)
end
