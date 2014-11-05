class AddUserIdToOffersAndOrders < ActiveRecord::Migration
  def change
  	add_column :offers, :user_id, :integer
  	add_column :orders, :user_id, :integer
  end
end
