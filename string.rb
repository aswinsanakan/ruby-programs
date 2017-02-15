puts "Hello" + "World" #Hello World

first_name = "ramesh"
last_name = "Suresh"
middle_name = "VEERESH"

puts first_name.capitalize #Ramesh
puts last_name.downcase #suresh
puts first_name.upcase #RAMESH
puts first_name.length #6
puts middle_name.reverse #HSEREEV

puts first_name.upcase! #permanently change string => RAMESH
#first_name = first_name.upcase
puts first_name #RAMESH
names = "ramesh,veeresh,suresh".split(/,/) 
puts names
#ramesh
#veeresh
#suresh
puts names.first #ramesh

#string interpolation , should have double quotes
puts "My name is #{first_name}. My Surname is #{last_name}"

#String Concatenation
puts "My name is " + first_name + ". My Surname is " + last_name
