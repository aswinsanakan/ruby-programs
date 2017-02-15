numbers = [100,200,123,450,875,1]
minimum=numbers.first
maximum = numbers.first

sum = 0
numbers.each do |num|
	if num <minimum
		minimum = num
	end
	sum +=num
end

puts numbers.to_s

puts "Minimum value is #{minimum}"
puts "Minimum value is " + minimum.to_s