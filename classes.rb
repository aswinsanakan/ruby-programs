class Restaurant
	#name, location, category, phone_number, cost_for_two
	#every attribute will have 2 methods - readers & writers / getters & setters
	#reader = return the value of the attribute
	#writer = set the value for the attribute
	#writer method for anme attribute
	def name= (user_input)
		@name = user_input #here @name is an instance variable
	end

	# reader meethod for name attribute
	def name
		@name
	end

	def location= (user_input)
		@location = user_input
	end

	def location
		@location
	end

	def reverse_name
		@name.reverse
	end

end

r1 = Restaurant.new
r1.name = "MTR" #writer method != r1.name("MTR")
r1.location = "JP Nagar"
puts r1.name # reader method
puts r1.location

r2 = Restaurant.new
r2.name = "Adigas"
r2.location = "Jayanagar"
puts r2.name
puts r2.location