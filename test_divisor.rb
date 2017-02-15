=begin
Create a function named divisors that takes an integer and returns an array with all of the integer's divisors(except for 1 and the number itself). If the number is prime return the string '(integer) is prime'.

Example:

divisors(12); #should return [2,3,4,6]
divisors(25); #should return [5]
divisors(13); #should return "13 is prime"
You can assume that you will only get positive integers as inputs.
=end


def divisors(num)
	divs = []
	i = 1
	num.times do
		i += 1
		if num == i
			next
		elsif num % i == 0
			divs.push(i)
		end 	
	end
	return divs
end


puts "Enter an integer"
num = gets.to_i

if divisors(num).size != 0
	puts "The array of divisors is #{divisors(num)}"
else
	puts "#{num} is a prime number"
end