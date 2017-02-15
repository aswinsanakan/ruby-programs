#Menu Driven Book Excercise

require 'faker'

class Book
	attr_accessor :name, :author, :borrowed
	@@books = []
	@@count = 0

	def initialize(name, author, borrowed)
		@name = name
		@author = author
		@borrowed = borrowed
		@@count += 1
	end

	def add_to_list
		@@books.push(self)
	end

	def self.all
		@@books
	end

	def self.count
		@@count
	end

	def display_info
		"* #{name} -- by #{author} -- (#{borrowed})"
	end

	def self.add_info(book_name, author_name)
		book = Book.new(book_name, author_name, " ")
		book.add_to_list
	end

	def self.list_all(author_name)
		@@books.find_all {|book| book.author == author_name}
	end

	def self.list_title(book_name)
		book = @@books.find {|book| book.name == book_name}
		return "* #{book.name} -- by #{book.author} -- (#{book.borrowed})"
	end

	def self.edit_book(book_name)
		book = @@books.find {|book| book.name == book_name}
		puts "* #{book.name} -- by #{book.author} -- (#{book.borrowed})"
		puts "Enter new book name :"
		book.name = gets.chomp
		puts "Enter author name :"
		book.author = gets.chomp
	end

	def self.mark_borrow(book_name)
		book = @@books.find {|book| book.name == book_name}
		book.borrowed = "borrowed"
		puts "* #{book.name} -- by #{book.author} -- (#{book.borrowed})"
	end

	def self.list_borrow
		@@books.find_all {|book| book.borrowed == "borrowed"}
	end

end

puts "*" * 10 + "Library" + "*" * 10
10.times do 
	name = Faker::Lorem.words(2).join(" ").capitalize
	author = Faker::Name.first_name
	borrowed = ["borrowed", " "].sample
	book = Book.new(name, author, borrowed)
	book.add_to_list
end

Book.all.each do |book|
	puts book.display_info
end 

choice = 0
while choice != 9
	puts "Choose an option:
	1. Add book information
    2. Display book information
    3. List all books of given author
    4. list the title of specified book
    5. List the count of books in the library
    6. Edit a book details
    7. Mark a book as borrowed
    8. List all the borrowed books
    9. Exit program"
	choice = gets.to_i

	case choice
	when 1
		puts "Enter book name :"
		book_name = gets.chomp
		puts "Enter author name :"
		author_name = gets.chomp
		Book.add_info(book_name,author_name)
	when 2
		Book.all.each do |book|
			puts book.display_info
		end 
	when 3
		puts "Enter author name:"
		author_name = gets.chomp
		puts Book.list_all(author_name).to_s
	when 4
		puts "Enter the book name :"
		book_name = gets.chomp
		puts Book.list_title(book_name)
	when 5
		puts "The number of books in the library is #{Book.count}"
	when 6
		puts "Enter the book name to be edited:"
		book_name = gets.chomp
		Book.edit_book(book_name)
	when 7
		puts "Enter book name :"
		book_name = gets.chomp
		Book.mark_borrow(book_name)
	when 8
		books = Book.list_borrow
		books.each do |book|
			puts "* #{book.name} -- by #{book.author} -- (#{book.borrowed})"
		end
	when 9
		exit 
	end
end
