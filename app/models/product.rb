class Product < ActiveRecord::Base
	has_many :users, through: :carts
	has_many :carts
end
