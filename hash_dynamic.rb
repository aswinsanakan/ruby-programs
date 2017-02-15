#Create a dynamic hash

dynamic = {} # Hash.new
choice = "y"

while choice == "y"
	puts "Enter the key :"
	key = gets.downcase.chomp
	dynamic[key] = nil
	puts "Do you wish to continue? (Y/N)"
	choice = gets.downcase.chomp
end

puts dynamic.to_s

dynamic.keys.each do |key|
	puts "Enter the value for #{key} :"
	dynamic[key] = gets.chomp
end

puts dynamic