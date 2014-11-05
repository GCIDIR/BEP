class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :firstname, :string
  	add_column :users, :tel1, :string
  	add_column :users, :adress1, :string
  	add_column :users, :adress2, :string
  	add_column :users, :country, :string
  	add_column :users, :city, :string
  	add_column :users, :marx, :integer
  	add_column :users, :is_confirmed?, :boolean
  	add_column :users, :is_active?, :boolean 
  end
end
