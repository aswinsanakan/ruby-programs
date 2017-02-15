#times

numbers = []

puts "Enter limit of random numbers :"
random = gets.to_i
random.times do 
	numbers.push(Random.rand(100))
end

puts numbers.to_s

#each

cities = ["bangalore", "mysore", "kochi"]

cities.each do |city|
	puts city.capitalize
end

#for in

for city in cities
	puts city.capitalize
end

#each2
capitals = {
	"India" => "New Delhi",
	"Canada" => "Ottawa",
	"Jamaica" => "Kingston"
}

capitals.each do |key,value|
	puts "Capital of #{key} is #{value}"
end

#each3 using key
capitals.keys.each do |key|
	puts "Capital of #{key} is #{capitals[key]}"
end

#each4 using value
capitals.values.each do |value|
	puts "Capital of #{capitals.key(value)} is #{value}"
end
