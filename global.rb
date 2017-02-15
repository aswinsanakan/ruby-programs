$ip_address = "192.168.1.100" #global

server = "192.168.1.200" #local

def connect
	$ip_address
	#server
end

class Server
	def show_details
		$ip_address
	end
end

c1 = Server.new
puts c1.show_details

puts connect