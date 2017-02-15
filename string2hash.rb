#String to Hash

string = "9740411566 00:18:23\n9740411566 00:04:12\n9740411771 00:54:00"

hash = {}
array = string.split("\n")
array.each do |n|
	key,value = n.split()
	if !(hash.key? key)
		hash[key] = [] 
	end
	hash[key] << value
end
puts hash

#OUTPUT: {"9740411566"=>["00:18:23", "00:04:12"], "9740411771"=>["00:54:00"]}

