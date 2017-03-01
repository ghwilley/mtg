class Card < ApplicationRecord
	def self.search_db(term)
	  Card.where('name LIKE ?',  "%#{term}%")
	end

	def self.search_api(term)
		
	end
end
