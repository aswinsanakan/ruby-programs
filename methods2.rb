# get number
# squared number
# raise the squared number
=begin
	2
	4
	64
=end

#method with no arguments & no return value
def greeting
	puts "*" * 40
	puts "\t METHOD PROGRAM"
	puts "*" * 40
end

def squared(n1)
	n1 * n1
end

def powered(n,pow)
	product = 1
	pow.times do
		product *= n 
		#puts product
	end
	return product	
end

greeting
puts "Enter a number"
n = gets.to_i
sq_num = squared(n)
puts "Square of #{n} is #{sq_num}"
puts "Enter the power to be raised"
power = gets.to_i
pow_num = powered(sq_num,power)  #powered(squared(n), pow)
puts "Powered number is #{pow_num}"