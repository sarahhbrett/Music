class Album < ActiveRecord::Base
	belongs_to :artists
	
	has_many :reviews
	
	def self.search(query)
		where("column LIKE ?", "%#{query}%") #whatever column you want to search on
	end
	def self.search(search)
		where("col1 LIKE ?", "%#{query}%") #this searches the contents of the 2 columns
		where("col2 LIKE ?", "%#{query}%") # using OR
	end

	

end
