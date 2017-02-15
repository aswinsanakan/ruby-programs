#Find number in array

nums = []
find_nums = []

puts "Enter 10 numbers :"
10.times do
	nums.push(gets.to_i)
end

puts nums.to_s

puts "Enter the number to be searched :"
find_num = gets.to_i

find_nums = nums.find_all {|num| num == find_num}
if find_nums != []
	puts "#{find_num} is present."
	puts "#{find_num} appears #{find_nums.size} times in the array!"
else
	puts "#{find_num} is NOT present."
end