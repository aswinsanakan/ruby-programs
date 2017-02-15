cart = [125,150,250]

total = 0
average = 0
cart.each do |price|
	total = total + price
end
puts "Cart total is #{total}"

average = total/cart.size
puts "Average cost is #{average}"
