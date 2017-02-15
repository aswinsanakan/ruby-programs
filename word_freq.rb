#To find the word frequency

word_hash = {}

puts "Enter the string to find word frequency :"
words = gets.chomp.split(" ")

words.each do |word|
	if word_hash.has_key? word
		word_hash["#{word}"].push("*")
	else 
		word_hash["#{word}"] = []
		word_hash["#{word}"].push("*")
	end
end

word_hash.each do |key,value|
	puts "#{key}: #{value.join("")}"
end