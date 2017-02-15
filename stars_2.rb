puts "Enter the limit of iterations"
count = gets.to_i

n = 1

while n <= count do 
	i = 1
	n.times do 
		i.times do 
			print "*"
		end
		puts "\n"
		i += 1
	end
	n += 1
end