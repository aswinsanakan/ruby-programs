#default value argument

def calculate_total(bill_amount, discount = 10)
	bill_amount - (bill_amount * discount/100)
end

puts "Enter bill amount"
bill_amount = gets.to_i

if bill_amount >= 5000
	puts calculate_total(bill_amount, 25)
else
	puts calculate_total(bill_amount)
end