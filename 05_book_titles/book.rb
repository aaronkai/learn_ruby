class Book
	
	#get method
	def title
		@title
	end
	
	#set method with capialization logic built in
	def title=(new_title)
		split_up_title = new_title.split
		working_title = []
		uncapitalized = ["the","and","to","a","an","in","of"]
	
		working_title.push(split_up_title.shift.capitalize)
		split_up_title.each do |word|
			unless uncapitalized.include? word
				working_title << word.capitalize
			else 
				working_title << word
			end
		end
		@title = working_title.join(" ")
	end
end
	

