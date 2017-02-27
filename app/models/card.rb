class Card < ApplicationRecord
	def self.search_db(term)
	  where('ILIKE(name) LIKE :term', term: "%#{term.downcase}%")
	end

	def self.search_api(term)
		
	end
end
