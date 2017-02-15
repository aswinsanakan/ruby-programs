#p1 = {"first_name" => "ramesh", "last_name" => "arvind", "college" => "bms", "company" => "etv", "age" => 49, "awards" => [2005,2009]}

movies = [{"name" => "DDLJ", "rating" => 9.2, "actors" => ["SRK", "Kajol"]}, {"name" => "OM", "rating" => 9.2, "actors" => ["SRK", "Prema"]}]

person = ["ramesh", "arvind", "bms", "etv", ["2004", "2006"]]

puts person[0]
puts person[1]


person = {"first_name" => "ramesh", "last_name" => "arvind", "college" => "bms", "company" => "etv", "awards" => ["2004", "2006"]}

person1 = {"first_name" => "Sam", "last_name" => "Smith"}

puts person["first_name"]
puts person["last_name"]
puts person1["first_name"]
puts person["first_name"]

#people = [person, person1]
people = []
people.push(person,person1)

puts "First Names in the array "
people.each do |p|
    puts p["first_name"]
end


movies =
 [
     {
         "name" => "DDLJ",
         "rating" => 9.2,
         "actors" => {"hero" => "SRK", "heroine" => "Kajol"}
         },
     {
         "name" => "OM",
         "rating" => 9.2,
         "actors" => ["SRK", "Prema"]
     }
 ]

puts movies.first
=begin
    {
         "name" => "DDLJ",
         "rating" => 9.2,
         "actors" => {"hero" => "SRK", "heroine" => "Kajol"}
     }
=end

puts movies.first["actors"]
=begin
    {"hero" => "SRK", "heroine" => "Kajol"}
=end

puts movies.first["actors"]["hero"]
# SRK

