class AddDepartureAndDestinationToOffersAndOrders < ActiveRecord::Migration
  def change
  	add_column :offers, :departure_country, :string
  	add_column :offers, :destination_country, :string
  	add_column :orders, :departure_country, :string
  	add_column :orders, :destination_country, :string
  end
end
