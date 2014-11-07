class Offer < ActiveRecord::Base
	include Wisper::Publisher
	after_create do
    	broadcast(:after_create, self)
  	end
	belongs_to :user


	def self.search_by_departure_and_destination(depart, dest)
		depart_city = depart.split(',').first
		depart_country = depart.split(',').last.strip

		dest_city = dest.split(',').first
		dest_country = dest.split(',').last.strip
		where(departure: depart_city, destination: dest_city, departure_country: depart_country, destination_country: dest_country)
	end
end
