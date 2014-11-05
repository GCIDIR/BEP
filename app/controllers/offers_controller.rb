class OffersController < ApplicationController

	def index
		@offers = Offer.all
	end


	def search
		depart = params[:offer][:departure]
		dest = params[:offer][:destination]
		@offers = Offer.search_by_departure_and_destination(depart, dest)

		respond_to do |format|
			format.js
		end
	end
end
