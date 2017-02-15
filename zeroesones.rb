require 'pry'

numbers = [1,0,0,1,1,0]

puts "Given : " + numbers.inspect

flag = 1

while flag == 1
	flag = 0
	(numbers.size - 1).times do |i|
		if numbers[i] > numbers[i+1]
			temp = numbers[i]
			numbers[i] = numbers[i+1]
			numbers[i+1] = temp
			flag = 1
		end
	end
end

puts "Output : " + numbers.inspect