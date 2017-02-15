class Product
	attr_accessor :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def details
		"#{name} - #{price}"
	end
end

class Mobile < Product
	attr_accessor :model

	def initialize(name, price, model)
		super(name,price)
		@model = model
	end

	def details
		super + " - #{model}"
	end

	def model_upcase
		"#{model.upcase}"
	end
end

p1 = Product.new("marker", 25)
puts p1.details

m1 = Mobile.new("iPhone", 60000, "Apple")
puts m1.details