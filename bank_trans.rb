#Bank Transaction

require 'faker'
class Account
	attr_accessor :name, :acc_num, :balance
	@@accounts = []

	def initialize(name, acc_num, balance)
		@name = name
		@acc_num = acc_num
		@balance = balance
	end

	def self.all
		@@accounts
	end

	def details
		"#{name} - #{acc_num} - Rs.#{balance}"
	end

	def add_to_list
		@@accounts.push(self)
	end

	def self.withdrawal(acc_num, amount)
		withdraw = @@accounts.find {|account| account.acc_num == acc_num}
		if withdraw.balance >= amount.to_i
			withdraw.balance -= amount.to_i
			return "Remaining balance for account number #{acc_num} is #{withdraw.balance}"
		else 
			return "The balance is insufficient for the specified withdrawal"
		end
	end

	def self.deposit(acc_num, amount)
		deposit = @@accounts.find {|account| account.acc_num == acc_num}
		deposit.balance += amount.to_i
		"Remaining balance for account number #{acc_num} is #{deposit.balance}"
	end

	def self.below_100
		@@accounts.find_all {|account| account.balance < 100}
	end

end

200.times do 
	name = Faker::Name.first_name
	acc_num = Faker::Number.number(4)
	balance = Faker::Number.between(50,1000)
	account = Account.new(name, acc_num, balance)
	account.add_to_list
end

=begin
Account.all.each do |account|
	puts "* #{account.details}"
end
=end

puts "The customers with balance below INR 100 :"
bankrupts = Account.below_100

bankrupts.each do |bankrupt|
	puts "* #{bankrupt.acc_num} - #{bankrupt.name} - Rs.#{bankrupt.balance}"
end

puts "Enter Acc num, Amount, code(0 - Withdrawal, 1 - deposit) :"
acc_num,amount,code = gets.chomp.split(" ")

if code == "0"
	puts Account.withdrawal(acc_num, amount)
elsif code == "1"
	puts Account.deposit(acc_num, amount)
else 
	puts "Invalid input"
	exit
end