class CreateUserTrackers < ActiveRecord::Migration
  def change
    create_table :user_trackers do |t|
    	t.integer :user_id
    	t.string :cookie_id
    	t.string :user_email
    	t.string :user_ip
    	t.string :url_visited

      t.timestamps
    end
  end
end
