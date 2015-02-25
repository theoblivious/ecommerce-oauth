class User < ActiveRecord::Base
	has_many :products, through: :carts
	has_many :carts
end
