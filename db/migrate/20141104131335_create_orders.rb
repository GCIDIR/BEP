class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.string :departure
    	t.string :destination
    	t.integer :offer_id

      t.timestamps
    end
  end
end
