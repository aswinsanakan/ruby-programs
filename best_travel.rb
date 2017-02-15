
def choose_best_sum(max,towns_num,towns)
	towns_comb = towns.combination(3).to_a
	best_sum = 0
	ts = 0
	towns_comb.each do |comb|
		comb_sum = comb.inject(:+)
		if comb_sum <= max && comb_sum > best_sum
			best_sum = comb.inject(:+)
			ts = comb.to_s
		end
	end
	return [best_sum,ts]
end

puts "Number of towns to visit :"
towns_num = gets.to_i 

towns = []
puts "Enter the distances between towns :"
towns_num.times do 
	towns.push(gets.to_i)
end

puts "Enter the distance limit :"
max = gets.to_i 

puts "The maximum distance that can be travelled : #{choose_best_sum(max,towns_num,towns).first}"
puts "Distances between towns : #{choose_best_sum(max,towns_num,towns).last}"
