# gem install httparty

#source "http://www.rubygems.org"

require 'httparty'
puts "Enter first name"
first_name = gets.chomp
response = HTTParty.get("https://gender-api.com/get?name=#{first_name}")
#response is an httparty object
puts "The gender is #{response.parsed_response["gender"]}"
