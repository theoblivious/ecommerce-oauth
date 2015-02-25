class AddIdmeidiNtoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :idmeid, :integer
  end
end
