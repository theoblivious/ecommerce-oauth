class RenameColumnQuantityToCart < ActiveRecord::Migration
  def change
  	rename_column :carts , :quantity, :requested_quantity
  end
end
