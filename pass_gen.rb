def generate(length, special, digits)
	if (special + digits) >= length
		special_arr = []
		digits_arr = []
		special.times do 
			special_arr << ("!".."?").to_a.sample
		end
		digits.times do
			digits_arr << ("0".."9").to_a.sample
		end
		password = (special_arr + digits_arr).shuffle.join
		password
	else
		puts "Password length not possible!"
	end
end

puts "Enter the minimum length of the password: "
length = gets.to_i
puts "Enter number of special characters :"
special = gets.to_i
puts "Enter number of digits :"
digits = gets.to_i

option = 1
puts "Passwords generated are :"
4.times do
	puts "#{option} - #{generate(length, special, digits)}"
	option += 1
end