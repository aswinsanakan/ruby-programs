class Movie
	#attr_accessor creates both readers & writers
	attr_accessor :name, :duration, :language
	attr_reader :code

	def initialize(name, duration, language)
		@code = "#{name[0..2]}:#{Random.rand(50..100)}"
		@name = name
		@duration = duration
		@language = language
	end

	def details
		"#{code} - #{name} - #{duration}mins - #{language}"
	end
end

movie1 = Movie.new("Sully", 90, "English")

puts movie1.details