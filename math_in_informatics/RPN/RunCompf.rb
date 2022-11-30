#encoding: utf-8

require "./Compf.rb"

c = Compf.new
while true
  print "Введите формулу: "
  c.compile(readline.chomp)
  print "\n"
end
