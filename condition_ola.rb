=begin
Ola is running a promo
If the user recharges for 999 and adds a promo code 
for OMG999, user gets 999 + 250 rs added to his wallet. 
If the user recharges for 250 and adds the code OMG250,
user gets 250rs + 50rs added to wallet. Assume the user's 
wallet balance is 40rs.
=end

wallet = 40
promo_codes = {"OMG250" => 50, "OMG999" => 250}
promo = 0

puts "Current wallet balance = #{wallet}\n"
puts "Enter the amount to recharge : ".chomp
amount = gets.to_f
puts "Enter the promo code (Optional: OMG250 or OMG999) : ".chomp
promo = gets.chomp.upcase

=begin
if amount == 999
	if promo_codes.has_key? promo && promo = "OMG999"
		wallet = wallet + amount + promo_codes[promo]
		puts "\nRecharged Rs.999. \nYou got Rs.#{promo_codes[promo]} added to wallet!"
	else puts "Recharged Rs.999 successfully"
	end
elsif amount == 250
	#if promo_codes.has_key? promo && promo = "OMG250"
	if promo == "OMG250"
		wallet = wallet + amount + promo_codes[promo]
		puts "\nRecharged Rs.250. \nYou got Rs.#{promo_codes[promo]} added to wallet!"
	else puts "Recharged Rs.250 successfully"
	end
end
puts "Wallet balance = #{wallet}"
=end

#=begin

#OR,

if amount == 999 && (promo_codes.has_key? promo && promo == "OMG999")
	wallet = wallet + amount + promo_codes[promo]
	puts "\nRecharged Rs.999. \nYou got Rs.#{promo_codes[promo]} added to wallet!"
elsif amount == 250 && ((promo_codes.has_key? promo) && promo == "OMG250")
	wallet = wallet + amount + promo_codes[promo]
		puts "\nRecharged Rs.250. \nYou got Rs.#{promo_codes[promo]} added to wallet!"
else puts "Recharged Rs.250 successfully"
end
puts "Wallet balance = #{wallet}"
#=end


