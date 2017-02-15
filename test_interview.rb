=begin 
The marketing team are spending way too much time typing in hashtags.
Let's help them with out own Hashtag Generator!

Here's the deal:

If the final result is longer than 140 chars it must return false.
If the input is a empty string it must return false.
It must start with a hashtag (#).
All words must have their first letter capitalized.
Example Input to Output:

" Hello there thanks for trying my Kata" => "#HelloThereThanksForTryingMyKata"

" Hello World " => "#HelloWorld"
=end


def comment(string)
	words = string.split(" ")
	words.each_with_index do |word, i|
		words[i] = word.capitalize
	end
	out = words.join
	output = "#" + out 
end

puts "Enter a string:"
string = gets.chomp

puts "Output : #{comment(string)}"