products = {"shoes" => 123, "books" => 99, "mobiles" => 56, "bikes" => 56}

puts products.class
puts products.values  #returns all the values of the hash
puts products.keys  #returns all the keys of the hash
puts products.length
puts products.to_a.to_s 

puts "Total stock of shoes is #{products["shoes"]}"
puts "There are 56 #{products.key(56)} "

products["laptops"] = 10 #add a new key value pair

products["books"] = 299

products.each do |key, value|
	puts "There are #{value} #{key}"
end
