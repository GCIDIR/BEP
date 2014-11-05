class AddUserIdToLocomotives < ActiveRecord::Migration
  def change
  	add_column :locomotives, :user_id, :integer
  end
end
