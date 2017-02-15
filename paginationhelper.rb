
class PaginationHelper

	attr_accessor :arr, :item
	@arr = []
	
	
	def initialize(arr,item)
		@arr = arr
		@item = item
	end
	item_count = @arr.size
	page_count = (item_count-1/item) + 1
	puts item_count
	puts page_count
	def page_item_count(pageindex)
		n = pageindex
		if (n+1)>page_count
			return -1
		elsif (n+1)<page_count
			return @item			
		else
			return item_count - ((page_count-1) * @item)
		end
	end 
   
    def page_index(itemindex)
    	n = itemindex
    	if n>@item_count || n< 0 
    		return -1
    	else
    		return  (n-1)/@item
    	end
    end

end



helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
helper.page_count # should == 2
helper.item_count # should == 6
helper.page_item_count(0)  # should == 4
helper.page_item_count(1) # last page - should == 2
helper.page_item_count(2) # should == -1 since the page is invalid

# page_ndex takes an item index and returns the page that it belongs on
helper.page_index(5) # should == 1 (zero based index)
helper.page_index(2) # should == 0
helper.page_index(20) # should == -1
helper.page_index(-10) # should == -1 because negative indexes are invalid
