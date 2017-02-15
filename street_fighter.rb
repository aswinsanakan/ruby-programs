def selected_chars(moves,fighters)
	i = j = 0
	chars_select = []
	moves.each do |move|
		case move
		when "up"
			if i != 0
				i -= 1
			end
			chars_select.push(fighters[i][j])
		when "down"
			if i != 1
				i += 1
			end
			chars_select.push(fighters[i][j])
		when "left"
			if j == 0
				j += 5
			else
				j -= 1
			end
			chars_select.push(fighters[i][j])
		when "right"
			if j == 5
				j = 0
			else
				j += 1
			end
			chars_select.push(fighters[i][j])
		else
			return nil
		end
	end
	return chars_select.to_s
end

fighters = [
    ["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
    ["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
]

moves = ["up", "left", "right", "left", "left"]
puts "Sample input : #{moves}"
puts "Output(found using method) : #{selected_chars(moves,fighters)}"
puts "How many moves do you want?"
limit = gets.to_i
puts "Now, input the moves (press enter after each): "
moves = []
limit.times do 
	moves.push(gets.chomp)
end

if selected_chars(moves,fighters).nil?
	puts "Invalid input"
else
	puts "Characters traversed : #{selected_chars(moves,fighters)}"
end