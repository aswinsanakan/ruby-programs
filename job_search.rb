jobs = {
    "query" => "ruby on rails",
    "results" => [
       
                {
                    "jobtitle" => "ROR Developer",
                    "company" => "Technosoft Global Services Pvt Ltd",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Indeed",
                    "jobkey" => "",
                    "sponsored" => false,
                    "expired" => false         
} ,{
                    "jobtitle" => "Fullstack/middleware/server-app developer - fresher or experience",
                    "company" => "OERDev",
                    "city" => "Mysore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Times Job",
                    "jobkey" => "1b01814f1cbc333d",
                    "sponsored" => true,
                    "expired" => true
},{
                    "jobtitle" => "Software Web UI Engineer - Ruby On Rails JavaScript AJAX",
                    "company" => "People Gamut",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "2ed53c04408249a6",
                    "sponsored" => false,
                    "expired" => false
},{
                    "jobtitle" => "Full Stack Software Engineer - Ruby mongodb",
                    "company" => "Premium-Jobs",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "4031a26fb78a4aeb",
                    "sponsored" => true,
                    "expired" => false
},{
                    "jobtitle" => "Edureka - Software Engineer - PHP Ruby On Rails Laravel",
                    "company" => "Edureka",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "1f54fd2de6c0eba8",
                    "sponsored" => false,
                    "expired" => false
},{
                    "jobtitle" => "Software Developer",
                    "company" => "Abyeti",
                    "city" => "Mysore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Abyeti",
                    "date" => "Fri, 20 May 2016 16=>27=>06 GMT",
                    "jobkey" => "8579ae6450978fe8"
},{
                    "jobtitle" => "Ruby on Rails",
                    "company" => "Masymbol Technologies",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Masymbol Technologies",
                    "jobkey" => "7a43d5241fec6c9a",
                    "sponsored" => false,
                    "expired" => false
},{
                    "jobtitle" => "Internship@foOfys",
                    "company" => "Foofys",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Foofys",
                    "jobkey" => "02601472025b7962",
                    "sponsored" => true,
                    "expired" => false
},{
                    "jobtitle" => "Full Stack Engineer",
                    "company" => "Azureiken Technologies",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Azureiken Technologies",
                    "jobkey" => "5441403f2056a1ca",
                    "sponsored" => false,
                    "expired" => true
},{
                    "jobtitle" => "Ruby on Rails Developer",
                    "company" => "Scripbox",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Scripbox",
                    "jobkey" => "1c838d054ea6d3e6",
                    "sponsored" => false,
                    "expired" => true
}]
}

#1
puts "1. Total number of jobs is #{jobs["results"].length}"


#2
bangalore_count = 0
mysore_count = 0
jobs["results"].each do |result|
     if result.value?("Bangalore")
          bangalore_count=bangalore_count+1 
     else
          mysore_count = mysore_count+1
     end
end

puts "2. Number of jobs in Bangalore is #{bangalore_count}"
puts "   Number of jobs in Mysore is #{mysore_count}"

#3
jobs_count = {"bangalore" => [{
                    "jobtitle" => "ROR Developer",
                    "company" => "Technosoft Global Services Pvt Ltd",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Indeed",
                    "jobkey" => "",
                    "sponsored" => false,
                    "expired" => false         
} ,{
                    "jobtitle" => "Software Web UI Engineer - Ruby On Rails JavaScript AJAX",
                    "company" => "People Gamut",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "2ed53c04408249a6",
                    "sponsored" => false,
                    "expired" => false
},{
                    "jobtitle" => "Full Stack Software Engineer - Ruby mongodb",
                    "company" => "Premium-Jobs",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "4031a26fb78a4aeb",
                    "sponsored" => true,
                    "expired" => false
},{
                    "jobtitle" => "Edureka - Software Engineer - PHP Ruby On Rails Laravel",
                    "company" => "Edureka",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "1f54fd2de6c0eba8",
                    "sponsored" => false,
                    "expired" => false
},{
                    "jobtitle" => "Ruby on Rails",
                    "company" => "Masymbol Technologies",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Masymbol Technologies",
                    "jobkey" => "7a43d5241fec6c9a",
                    "sponsored" => false,
                    "expired" => false
},{
                    "jobtitle" => "Internship@foOfys",
                    "company" => "Foofys",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Foofys",
                    "jobkey" => "02601472025b7962",
                    "sponsored" => true,
                    "expired" => false
},{
                    "jobtitle" => "Full Stack Engineer",
                    "company" => "Azureiken Technologies",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Azureiken Technologies",
                    "jobkey" => "5441403f2056a1ca",
                    "sponsored" => false,
                    "expired" => true
},{
                    "jobtitle" => "Ruby on Rails Developer",
                    "company" => "Scripbox",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Scripbox",
                    "jobkey" => "1c838d054ea6d3e6",
                    "sponsored" => false,
                    "expired" => true
}], "mysore" => [{
                    "jobtitle" => "Fullstack/middleware/server-app developer - fresher or experience",
                    "company" => "OERDev",
                    "city" => "Mysore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Times Job",
                    "jobkey" => "1b01814f1cbc333d",
                    "sponsored" => true,
                    "expired" => true
},{
                    "jobtitle" => "Software Developer",
                    "company" => "Abyeti",
                    "city" => "Mysore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Abyeti",
                    "date" => "Fri, 20 May 2016 16=>27=>06 GMT",
                    "jobkey" => "8579ae6450978fe8"
}]}

puts "3. Hash based on location :\n#{jobs_count}";

#4
jobs["results"].each do |result|
     if result.key?("sponsored"||"expired")
          next
     else
          puts "4. #{result["jobtitle"]}"
     end
end

#5
jobs_expired = []
jobs["results"].each do |result|
     if result.key?("expired")
          if result["expired"] == true
               jobs_expired = jobs_expired.push(result["jobtitle"])
          end
     end
end

puts "5. Expired jobs = #{jobs_expired}"

#6
jobs_sponsored = []
jobs["results"].each do |result|
     if result.key?("sponsored")
          if result["sponsored"] == true
               jobs_sponsored = jobs_sponsored.push(result["jobtitle"])
          end
     end
end

puts "6. Sponsored jobs = #{jobs_sponsored}"

#7
puts "7. Count of sponsored = #{jobs_sponsored.size}"

#8
puts "8. Count of expired = #{jobs_expired.size}"

#9
source_arr = []
jobs["results"].each do |result|
     if result.key?("source")
          source_arr = source_arr.push(result["source"])
     end
end
puts "9. Source Array : #{source_arr.to_s}"

#10
jobs_wisdom = []
jobs["results"].each do |result|
     if result["source"] == "WisdomJobs.com"
          jobs_wisdom = jobs_wisdom.push(result["jobtitle"])
     end
end
puts "10. Jobs whose source is WisdomJobs.com : #{jobs_wisdom.to_s}"

#11
jobs["results"].each do |result|
     if result["jobkey"] == ""
          puts "11. Job with empty jobkey is #{result["jobtitle"]}"     
     end
end
puts 