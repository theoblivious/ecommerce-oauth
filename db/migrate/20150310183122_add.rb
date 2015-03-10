class Add < ActiveRecord::Migration
  def change
  	add_column :users, :password_hash, :string
  	add_column :users, :passsword_salt, :string
  end
end
