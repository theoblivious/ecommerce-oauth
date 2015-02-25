class ChangeIdmEtoInteger < ActiveRecord::Migration
  def change
  	remove_column :users, :idmeid
  end
end
