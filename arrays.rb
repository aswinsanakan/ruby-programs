names = ["ramesh", 'suresh',"veeresh","mahesh", 123]

nums = [10,20,30]

nums.to_s #returns a string of the array
nums.inspect #" " " "
nums[0] #accessing value at an index 0
nums.join(",") #joins the value comma seperated
nums.reverse #reverse the array
nums.sort #sorts the array in ascending order
nums.sort.reverse #descending order
nums.uniq #returns only unique values in array
nums.length #returns length of the array
nums.size #"" " "
nums.delete_at(1) #removes the value at 1st index
nums.delete(10) #removes the value 10
nums.push(102) #add value 102 at the end of the array
nums.pop #removes the last value in the array
nums.shift #removes the first value from the  array
nums.unshift(23) #add 23 to the beginning of array
nums.insert(2,100) #adds value 100 at 2nd index

nums.find {|num| num > 15} #returns value 20
nums.find_all {|num| > 15} #returns an array [20,30]