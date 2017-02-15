#loop (Not widely used)
#initialization, condition, incrementation

i = 1
loop do 
	if i <= 10
		puts i
	else 
		break #loop control
	end
	i = i + 1 # i += 1
end


#while

cont = "y"
while cont == "y"
	puts "Enter numerator"
	num1 = gets.to_i
	puts "Enter denominator"
	num2 = gets.to_i
	puts num1 / num2
	puts "Do you wish to continue (y/n) ?"
	cont = gets.chomp.downcase
end

#until    -> same as while
#loop executes as long as cont != n
cont = "y"
until cont == "n"
	puts "Enter numerator"
	num1 = gets.to_i
	puts "Enter denominator"
	num2 = gets.to_i
	if num2.zero?  #Same as num2 == 0
		puts "Division by zero is not possible."
		break
	else
		puts num1 / num2
	end
	puts "Do you wish to continue (y/n) ?"
	cont = gets.chomp.downcase
end


#Loop Controls
#next --> continues the next iteration
#break --> breaks out of the loop
#exit --> exits out of the program
