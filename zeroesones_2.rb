=begin

numbers = [1,0,0,1,1,0]

puts "Given : #{numbers.inspect}"
n = numbers.size - 1

n.times do |i|
	index = i

	i.next.upto(n) do |j|
		index = j if numbers[j] < numbers[index]
	end
  
  	if index != i
  		temp = numbers[i]
	  	numbers[i] = numbers[index]
	   	numbers[index] = temp
	   	numbers_2
	end 
end
puts "Output : #{numbers.inspect}"

=end

numbers = [1,0,0,1,1,0]
numbers_2 = []

puts "Given : " + numbers.inspect

flag = 1
j = 0

while flag == 1
	flag = 0
	(numbers.size - 1).times do |i|
		if numbers[i] > numbers[i+1]
			temp = numbers[i]
			numbers[i] = numbers[i+1]
			numbers[i+1] = temp
			numbers_2[j] = numbers[i]
			flag = 1
			j += 1
		end
	end
	j += 1
end

puts "Output : " + numbers_2.inspect