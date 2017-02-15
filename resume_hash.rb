resume = {
	"john_doe" => {
		"contact_details" => {
			"github" => "www.githubb.com/john",
			"email" => "john@gmail.com",
			"mobile" => {
				"home" => "123445",
				"office" => "68798"
			},
			"linkedin" => "www.linkedin.com/john"
		}, # end of contact_details
		"punch_line" => "Passionate in building apps using ROR",
		"qualification_summary" => [
			"Strong MVC Architecture",
			"Trained for buildiong apps from scratch",
			"Good understanding of OOPs"
			], # end of qualification summary
		"objective" => "I want to join an organization",
		"education" => {"under_grad" => "Engineering in CS",
			"secondary_edu" => "Surana college"}, #end of education
		"technical_skills" => {
			"languages" => ["Ruby", "Html"],
			"frameworks" => ["ROR"],
			"ux_tools" => ["Balsamiq"]
		}, #end of technical skills
		"certifications" => ["ROR Certification", "JAVA Certification"],
		"internship" => ["Jr Marketing", "Jr Web Dev"],
		"projects" => [
			{
				"name" => "tasbox",
				"description" => "pm tool",
				"roles" => ["Developed", "maintained", "tested"]
			},
			{
				"name" => "constructor view",
				"description" => "constructor tool",
				"roles" => ["Developed", "maintained", "tested"]
			}
		] #end of projects
	}
}

# puts resume
# puts resume["john_doe"]["technical_skills"]["languages"][1] #prints html
# puts resume["john_doe"]["projects"][0]["name"] #prints taskbox

#to display email id:
puts resume["john_doe"]["contact_details"]["email"]

#to display qualification summary
resume["john_doe"]["qualification_summary"].each do |point|
	puts "* #{point}"
end

#to display the technical skills
resume["john_doe"]["technical_skills"].each do |key,value|
	puts "\n+ #{key}"
	value.each do |v|
		puts "--- #{v}"
	end
end

#to insert a value Django into frameworks
resume["john_doe"]["technical_skills"]["frameworks"].push("Django")

puts resume["john_doe"]["technical_skills"]["frameworks"]
