#method definition
def add
	puts 10 + 20  #return value is nil
end

def multiply
	2 * 5
	puts "We are inside multiply method"
	return 10 * 5  #return value is 50
	#in ruby using return keyword is optional, because the last statement executed will be the returned value
	#when return keyword is explicitly used, we come out of the program
	puts "hi how you doing?" #Won't be executed
end

def add_numbers(n1,n2)
	puts n1 + n2  
end

def full_name (fn,mn,ln)
	#puts fn + " " + mn + " " + ln 	
	puts "#{fn} #{mn} #{ln}"
end

#method invocation
add
puts "*" * 10
puts multiply
puts "*" * 10
add_numbers(10,15)
add_numbers(13,7.5)
add_numbers("hello","world")

puts "*" * 10

f_name = "Aswin"
m_name = "S"
l_name = "Sanakan"

puts full_name(f_name, m_name, l_name)