#Number of negative, positive, odd and even numbers in an array

neg = 0
pos = 0
even = 0
odd = 0
count = 0
nums = []

puts "Enter 20 numbers :"
while count < 20
  num = gets.chomp
  nums << num.to_i
  count += 1
end


nums.each do |a|
	if a < 0
		neg += 1
	else pos += 1
	end

	if a % 2 == 0
		even += 1
	else odd += 1
	end
end

puts "Positive numbers = #{pos}"
puts "Negative numbers = #{neg}"
puts "Even numbers = #{even}"
puts "Odd numbers = #{odd}"