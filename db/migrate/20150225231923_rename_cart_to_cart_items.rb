class RenameCartToCartItems < ActiveRecord::Migration
  def change
  	rename_table :carts, :cart_items
  end
end
