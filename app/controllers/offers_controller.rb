class OffersController < ApplicationController
	autocomplete :city, :name, :full => true, :extra_data => [:country_id], :display_value => :auto_methode

	def index
		@offers = Offer.all
	end

	def new 
		@offer = Offer.new
	end

	def create
		@offer = Offer.new(offer_params)
		@offer.subscribe(OfferObserver.new)
		@offer.on(:after_create) { |offer| 
			redirect_to list_offers_offers_path
		}
		@offer.save
	end


	def search
		depart = params[:offer][:departure]
		dest = params[:offer][:destination]
		@offers = Offer.search_by_departure_and_destination(depart, dest)

		respond_to do |format|
			format.js
		end
	end

	def list_offers
		@offers = Offer.all

		respond_to do |format|
			format.js
		end
	end

	private 

	def offer_params
		 params.require(:offer).permit(:departure, :destination, :min_weight_accepted, :max_weight_accepted, :price, :departure_country, :destination_country, :user_id)
	end

end
