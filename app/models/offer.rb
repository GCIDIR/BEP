class Offer < ActiveRecord::Base
	belongs_to :user


	def self.search_by_departure_and_destination(depart, dest)
		where(departure: depart, destination: dest)
	end
end
