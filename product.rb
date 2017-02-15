class Product
	attr_accessor :name, :price

	def initialize(details={})
		@name = details["name"]
		@price = details["price"]
	end

	def details
		"#{name} - #{price}"
	end

end

p1 = Product.new
p1.name = "pencil"
p1.price = 10
puts p1.details

p2 = Product.new({"name" => "pencil", "price" => 12})
puts p2.details
