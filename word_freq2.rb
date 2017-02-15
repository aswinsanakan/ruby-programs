sentence = "badger badger badger badger mushroom mushroom snake badger badger badger"
words = sentence.split(" ")
keys = words.uniq
frequency = {}
keys.each do |key|
	frequency[key] = (words.find_all {|word| word == key}).count
end

frequency.each do |key,value|
	puts "#{key}: #{"*" * value}"
end
