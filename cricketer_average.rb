#Cricketer Average

require 'faker'
class Cricketer
	attr_accessor :name, :age, :test_matches, :average_runs
	@@cricketers = []

	def initialize(name, age, test_matches, average_runs)
		@name = name
		@age = age
		@test_matches = test_matches
		@average_runs = average_runs
	end

	def add_to_list
		@@cricketers.push(self)
	end

	def self.all
		@@cricketers
	end

	def self.sort
		@@cricketers.sort_by {|cricketer| cricketer.average_runs}
	end

	def details
		"#{name} - #{age} - #{test_matches} matches- #{average_runs} runs"
	end

end

20.times do
	name = Faker::Name.name
	age = Random.rand(20..35)
	test_matches = Random.rand(30..60)
	average_runs = Random.rand(1000..4000)
	cricketer = Cricketer.new(name, age, test_matches, average_runs)
	cricketer.add_to_list
end

=begin
Cricketer.all.each do |cricketer|
	puts cricketer.details
end
=end

puts "Cricketers listed in ascending order of Average Runs :"
cricketers = Cricketer.sort

cricketers.each do |cricketer|
	puts cricketer.details
end
