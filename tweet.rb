#Twitter Class

class Tweet
	#attributes - body, user, published_at
	def body= (user_input)
		if user_input.length < 20
			@body = user_input
		else 
			@body = nil
		end
	end

	def body #reader
		@body
	end

	def publish
		@body
	end
end

tweets = []

tweet_1 = Tweet.new
tweet_1.body = "India"
#puts tweet_1.body
tweets.push(tweet_1)

tweet_2 = Tweet.new
tweet_2.body = "India is playing NZ in bangalore"
#puts tweet_2.body
tweets.push(tweet_2)

#puts tweets.to_s
tweets.each do |tweet|
	puts "* #{tweet.publish}"
end