require 'pry'

ease = {}
puts "Place your order :"
orders = gets.chomp.split(',')
total_buy = 0
total_sell = 0
orders.each do |order|
	content = order.split(' ')
	items = ["quote","quantity","price","status"]
	i = 0
	content.each_with_index do |c,j|
		ease[items[i]] = c
		
		sub_tot = 0
		if i == 1 && content[j+2].upcase == "B"
			sub_tot = c.to_i * content[j+1].to_f
			total_buy +=  sub_tot
		elsif i == 1 && content[j+2].upcase == "S"
			sub_tot = c.to_i * content[j+1].to_f
			total_sell +=  sub_tot
		end
		i += 1
	end
end


puts "#{ease}"
puts "Buy: #{total_buy.to_i} Sell: #{total_sell.to_i}"

