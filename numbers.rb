num1 = 88
num2 = 9.8
num3 = 12.3
num4 = -123

#float Class methods
puts num2.round #10
puts num3.round #13

puts num3.ceil #13
puts num2.floor #9

puts num3.class #Float
puts num3.to_i #12

puts num1.class #Fixnum
puts num1.to_f #88.0
puts num1.to_f.class #Float
puts num1.class #Fixnum
puts num4.abs #123

puts num1.next #89
num1 = num1.next 

puts num1 #89