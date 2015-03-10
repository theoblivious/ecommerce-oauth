class User < ActiveRecord::Base
	has_many :products, through: :cart_items
	has_many :cart_items
end
