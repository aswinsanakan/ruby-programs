#Enter today's temperature
#puts "he said, \"today is bright day\""

#if else
=begin
puts "Enter today's temperature:".chomp
temperature = gets.to_f
puts "We recommend"
if temperature > 40
	puts "Swimming"
elsif temperature > 30
	puts "Tennis"
elsif temperature > 20
	puts "Badminton"
elsif temperature > 0
	puts "Chess"
else 
	puts "Sit by the fire"
end
=end	

#Shorthand operators

#unless
n1 = 10
unless n1 > 20
	puts "n1 is Smaller than 20"
end


#case
puts "Enter today's temperature"
temperature = gets.to_f
print "We recommend :"
case 
when temperature > 40
	puts "Swimming"
when temperature > 30 then puts "Tennis"
when temperature > 0
	puts "Indoor activity"
else
	puts "Sit by the fire"	
end



#ternary

=begin
Syntax :
boolean ? "value1" : "value2"
=end

n1 = 10
puts (n1 > 20)? "n1 is greater" : "n1 is Smaller"
