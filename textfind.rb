def search(letter, array)
	out = []
	array.each do |string|
		char = string.split('').first
		if letter.downcase == char.downcase
			out.push(string)
		end
	end
	out
end

puts "Enter the number of strings:"
limit = gets.to_i

array = []
puts "Enter the strings:"
limit.times do 
	array.push(gets.chomp)
end

puts "Enter the letter:"
letter = gets.chomp

puts "#{search(letter,array)}"