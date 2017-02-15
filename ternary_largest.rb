#Find the largest of three numbers using ternary operators

nums = []
count = 0

puts "Enter 3 numbers :"
while count < 3
  num = gets.chomp
  nums << num.to_i
  count += 1
end

large = ((nums[0] > nums[1] ? a = nums[0] : a = nums[1]) > nums[2] )? a : nums[2]
puts "Largest number is #{large}"