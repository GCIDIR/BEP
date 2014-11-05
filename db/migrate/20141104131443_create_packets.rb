class CreatePackets < ActiveRecord::Migration
  def change
    create_table :packets do |t|
    	t.string :title
    	t.float :weight
    	t.float :height
    	t.float :width
    	t.integer :order_id

      t.timestamps
    end
  end
end
