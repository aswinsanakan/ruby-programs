p1 = {"first_name" => "Johnny", "last_name" => "Depp", "location" => "canada", "movie" => "transcendence", "age" => 45, "awards" => [2007,2012,2015]}

#movies = [{"name" => "DDLJ", "rating" => 9.2, "actors" => ["SRK","Kajol"]}, {"name" => "OM", "rating" => 9.2, "actors" => ["SRK","Prema"]}]

movies = [{"name" => "DDLJ", "rating" => 9.2, "actors" => {"hero" => "SRK", "heroine" => "Kajol"}}, {"name" => "OM", "rating" => 9.2, "actors" => ["SRK","Prema"]}]

puts movies[0]["actors"]["heroine"]  #returns Kajol
