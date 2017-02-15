
def rot13(string)
	splitted = string.split('')
	splitted.each_with_index do |letter, i|
		if splitted[i].ord.between?("0".ord,"9".ord)
			next
		end
		splitted[i] = letter.ord + 13
		if letter == letter.upcase && splitted[i] > "Z".ord
			temp = splitted[i] - "Z".ord - 1
			splitted[i] = "A".ord + temp
		elsif splitted[i] > "z".ord
			temp = splitted[i] - "z".ord - 1
			splitted[i] = "a".ord + temp
		end
		splitted[i] = splitted[i].chr
	end
	splitted.join
end


puts "Enter a string"
string = gets.chomp

puts "ROT13 cipher is #{rot13(string)}"