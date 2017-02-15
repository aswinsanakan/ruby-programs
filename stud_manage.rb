#Student Management

require 'faker'
class Student
	attr_accessor :name, :roll_num, :department, :course, :year_of_join
	@@students = []

	def initialize(name, roll_num, department, course, year_of_join)
		@name = name
		@roll_num = roll_num
		@department = department
		@course = course
		@year_of_join = year_of_join
	end

	def self.all
		@@students
	end

	def add_to_list
		@@students.push(self)
	end

	def details
		"#{name} - #{roll_num} - #{department} - #{course} - #{year_of_join}"
	end

	def self.joined_year(year)
		@@students.find_all {|student| student.year_of_join == year}
	end

	def self.find_roll(roll)
		@@students.find {|student| student.roll_num == roll}
	end

end

roll_num = 0
100.times do
	name = Faker::Name.first_name
	roll_num += 1
	department = ["Electronics", "Computer Science", "Mechanical"].sample
	course = ["BTech", "MTech", "MCA"].sample
	year_of_join = Random.rand(2012..2016)
	student = Student.new(name, roll_num, department, course, year_of_join)
	student.add_to_list
end

=begin
Student.all.each do |student|
	puts "* #{student.details}"
end
=end

puts "Enter the year(2012 - 2016):"
year = gets.to_i
year_students = Student.joined_year(year)

puts "The students who joined in the year #{year} are :"
puts year_students.collect(&:name)

puts "Enter the roll number(1 - 100):"
roll = gets.to_i
find_student = Student.find_roll(roll)

puts "Student with roll number #{roll} is "
puts find_student.details