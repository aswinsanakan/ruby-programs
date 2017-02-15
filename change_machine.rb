
def change(money)
	cents = { 25 => 0, 10 => 0, 5 => 0, 1 => 0 }
	cents.each do |cent,value|
		while cent <= money
			cents[cent] += 1
			money -= cent
		end
	end
	return cents
end


puts "Enter the money you have:"
money = gets.to_i

puts "#{change(money)}"