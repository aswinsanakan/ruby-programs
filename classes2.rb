class Product
	def name= (name)
		@name = name
	end

	def name 
		@name
	end

	def price=(price)
		@price = price
	end

	def price
		@price
	end

	def category=(category)
		@category = category
	end

	def category
		@category
	end
end

products = []

3.times do 
	product = Product.new
	puts "Enter name"
	product.name = gets.chomp
	puts "Enter price"
	product.price = gets.chomp
	puts "Enter category"
	product.category = gets.chomp
	products.push(product)
end

puts products.to_s

products.each do |product|
	puts "* #{product.name} - #{product.price} - #{product.category}"
end