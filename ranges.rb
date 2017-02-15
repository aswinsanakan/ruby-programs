my_range = 1..10 # inclusive range (1 to 10)
my_range_2 = 1...10 #exclusive range (1 upto 10)

puts my_range.to_a.to_s # [1,2,3,4,5,6,7,8,9,10]
puts my_range_2.to_a.to_s # [1,2,3,4,5,6,7,8,9]

puts my_range.begin #1
puts my_range.first #1

puts my_range.end #10
puts my_range_2.end #10

puts my_range.include? 10 #true
puts my_range.include? 11 #false

puts my_range_2.include? 10 #false