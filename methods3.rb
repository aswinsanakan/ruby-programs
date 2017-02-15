#variable number of arguments

def add(*numbers) #here * represents variable no of arguments , numbers is an array
	# [10,20] [10,20,30]
=begin
sum = 0
numbers.each do |n|
	sum += n
end
retturn sum
=end
	puts numbers.to_s
	numbers.inject(:+)
end

puts add(10,20)
puts add(10,20,30)
puts add(10,20,30,40)