class City < ActiveRecord::Base
	belongs_to :country


	def auto_methode
		"#{self.name}, #{self.country.name}"
	end
end
