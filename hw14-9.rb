nums = [100,200,123,450,875,1]

sum = 0
average = 0
nums2 = nums.sort
nums.each do |n|
	sum = sum + n
end
average = (sum / nums.size)
puts "Sum = #{sum}"
puts "Average = #{average}"
puts "Minimum = #{nums2[0]}"
puts "Maximum = #{nums2.pop}"
