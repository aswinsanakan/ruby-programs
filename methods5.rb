#pass array as an argument

def grade(grades, curve)
	grades.map! {|grade| grade += curve}
end

grades = [50,60,70,80]
puts grades.to_s

grade(grades, 5)

puts grades.to_s