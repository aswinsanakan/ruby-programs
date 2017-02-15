bills = "9740411566 00:18:23\n9740411566 00:04:12\n9740411771 00:54:00"
calls = bills.split("\n")
output = {}
calls.each do |call|
	call_split = call.split(" ")
	if output.has_key? call_split.first
		output["#{call_split.first}"].push(call_split.last)
	else
		output["#{call_split.first}"] = []
		output["#{call_split.first}"].push(call_split.last)
	end
end
puts output

=begin
call
output = {}
1st call = "9740411566 00:18:23"
1st call_split = ["9740411566" , "00:18:23"]
output = {"9740411566" => []}
{"9740411566" => ["00:18:23"]}

output = {"9740411566" => ["00:18:23"]}
2nd call = "9740411566 00:04:12"
2nd call_split = ["9740411566", "00:04:12"]
{"9740411566" => ["00:18:30", "00:04:12"]}

output = {"9740411566" => ["00:18:30", "00:04:12"]}
=end