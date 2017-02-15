# gem install pry
# exit
# exit-all
# exit-program
# disable-pry

require 'pry'
=begin 
def sum(n1,n2)
	binding.pry
	n1 + n2
end

puts sum(10,20)
=end

numbers = [10,20,30,50,60]

sum = 0
numbers.each do |num|
	binding.pry
	sum += num
	binding.pry
end

puts "Total : #{sum}"