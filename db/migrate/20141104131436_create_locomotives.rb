class CreateLocomotives < ActiveRecord::Migration
  def change
    create_table :locomotives do |t|
    	t.string :name
    	t.string :loco_type

      t.timestamps
    end
  end
end
