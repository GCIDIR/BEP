class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
    	t.string :departure
    	t.string :destination
    	t.float :min_weight_accepted
    	t.float :max_weight_accepted
    	t.float :price

      t.timestamps
    end
  end
end
