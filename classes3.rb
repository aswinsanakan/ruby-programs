class Event
	# title, event_date
	#constructor, initialize is reserved keyword
	def initialize(title, event_date)
		@code = Random.rand(10000)
		@title = title
		@event_date = event_date
	end

	def title= (title)
		@title
	end

	def title
		@title
	end

	def event_date= (event_date)
		@event_date = event_date
	end

	def event_date
		@event_date
	end

	def code
		@code
	end

	def details
		"#{code} - #{title} - #{event_date}"
	end
end

event_1 = Event.new("Symposium", "2016-09-29")
puts event_1.details