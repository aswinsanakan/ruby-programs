require 'faker'
class Player
	attr_accessor :name, :team, :strike_rate
	@@players = [] #temp data storage

	def initialize(name, team, strike_rate)
		@name = name
		@team = team
		@strike_rate = strike_rate
	end

	def add_to_list
		@@players.push(self) #self in statements refer the invoking object inside the class
	end

	def self.all #self in method definition defines a class method
		@@players
	end

	def details
		"#{self.name} - #{self.team} - #{self.strike_rate}"
	end

	def self.find_by_team(team_name)
		@@players.find_all {|player| player.team == team_name}
	end

	def self.find_by_strike_rate(strike_rate)
		@@players.find_all {|player| player.strike_rate >= strike_rate}
	end

	def self.find_by_range(min_sr, max_sr)
		@@players.find_all {|player| player.strike_rate >= min_sr && player.strike_rate <= max_sr}
	end
=begin
	def self.team_hash
		@@players.each do |player|
			player.team.each do |t|
				@@team_hash.each do |key, value|
					@@team_hash[key] = []
					@@team_hash[key] = @@players.find_all {|player| player.team == t }
				end
			end
		end
	end
=end
end


50.times do
	name = Faker::Name.first_name
	team = ["RCB", "DD", "KT", "SRH", "KKR"].sample
	strike_rate = Faker::Number.between(50,250)
	player = Player.new(name, team, strike_rate)
	player.add_to_list
end

puts "Find all players by team"
team_name = gets.upcase.chomp

team_players = Player.find_by_team(team_name)

puts team_players.collect(&:name).to_s


=begin
puts "Find all players by team"
team_name = gets.upcase.chomp

team_players = Player.find_by_team(team_name)

team_players.each do |player|
	puts "* #{player.details}"
end

puts "Enter strike rate"
sr = gets.to_i 

players = Player.find_by_strike_rate(sr)
players.each do |player|
	puts "* #{player.details}"
end

min_sr = 160
max_sr = 175

puts "Players with Strike rate #{min_sr} - #{max_sr}"

players = Player.find_by_range(min_sr, max_sr)
players.each do |player|
	puts "* #{player.details}"
end
=end

