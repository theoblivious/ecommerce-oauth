class Product < ActiveRecord::Base
	has_many :users, through: :cart_items
	has_many :cart_items
end
