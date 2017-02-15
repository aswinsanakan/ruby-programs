#Add or Subtract two numbers using methods

def add(n1,n2)
	n1 + n2
end

# puts add(10)  #error

def sub(n1,n2)
	n1 - n2
end

cont = 'y'
while cont == 'y'
	puts "Enter n1"
	n1 = gets.to_i
	puts "Enter n2"
	n2 = gets.to_i
	puts "Select an option"
	puts "1.Add \n2.Sub"
	option = gets.to_i
	case option
	when 1
		puts "Sum is #{add(n1,n2)}"
	when 2
		puts "Difference is #{sub(n1,n2)}"
	else
		puts "Invalid Option"
	end

	puts "Do you wish to continue (y/n)"
	cont = gets.downcase.chomp
end