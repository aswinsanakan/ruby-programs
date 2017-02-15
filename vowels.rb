#Find the total number of vowels in a string using iterators and case statement.
#Display the vowels present in the string as an array
#Display only the unique vowels appearing in the string
#Code:AswinSanakan

vowels = []
vowels_count = 0

puts "Enter a string :"
string = gets.downcase.chomp.split("")
string.each do |char|
	case 
	when char == "a"
		vowels.push(char)
		vowels_count += 1
	when char == "e"
		vowels.push(char)
		vowels_count += 1
	when char == "i"
		vowels.push(char)
		vowels_count += 1
	when char == "o"
		vowels.push(char)
		vowels_count += 1
	when char == "u"
		vowels.push(char)
		vowels_count += 1
	end
end
puts "Total number of vowels is #{vowels_count}"
puts "Array of all vowels in the string is #{vowels.to_s}"
puts "Array of unique vowels is #{vowels.uniq.to_s}"