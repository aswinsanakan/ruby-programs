puts "Enter a password"
password = gets.chomp
if password.length < 7
	puts "Length is too short"
else
	puts "Your password is #{password}"
end