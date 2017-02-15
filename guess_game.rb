puts "*** Welcome to the guess game ***"
puts "Enter your name"
player_name = gets.chomp
puts "Welcome " + player_name + "! Let's get started."
target_number = Random.rand(100)
player_guesses = 0
maximum_guesses = 5
low = 0
high = 100
while player_guesses < maximum_guesses
	puts "You have #{maximum_guesses - player_guesses} chances left"
	puts "Guess a number between #{low} to #{high}"
	guessed_number = gets.to_i
	if guessed_number < target_number
		puts "Oops. Your guess was low"
		low = guessed_number
	elsif guessed_number > target_number
		puts "Oops. Your guess was high"
		high = guessed_number
	else
		puts "Congrats! You guessed my number :)"
		break
	end
	player_guesses += 1
end
puts "Target Number is #{target_number}"
