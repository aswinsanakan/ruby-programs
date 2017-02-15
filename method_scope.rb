class Product
	attr_accessor :name, :price
	attr_reader :code

	def initialize(name, price)
		@name = name
		@price = price
		@code = generate_details
	end

	def details
		"#{code} - #{name} - #{price}"
	end

	private

	def generate_details
		generate_code
	end

	def generate_code
		"#{@name[0..2]}-#{Random.rand(1000)}"
	end

	#private :generate_details, :generate_code
end

p1 = Product.new("Marker", 25)
puts p1.details