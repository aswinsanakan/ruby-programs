numbers = [10,20,30,40,50]

numbers.each do |n| # n is a block variable
	puts n
end

# puts n doesn't work outside the method, because n is block variable

=begin doesn't work as numbers is a local variable and is not
available inside a method

def add
	nummbers.inject(:+)
end

puts add
=end

def add(numbers)
	numbers.inject(:+)
end

puts numbers.to_s

puts add(numbers)

