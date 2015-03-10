class User < ActiveRecord::Base
  require "bcrypt"
  has_many :products, through: :cart_items
  has_many :cart_items

# make password persist as a column within the user table, we cant store this directly as that would be bad practice to store text strings. 
attr_accessor :password
# a password confirmation field. So we can be sure users are entering the correct password. 
validates_confirmation_of :password
# need the encrypt_password method to run before a new instance of user is saved. 
before_save :encrypt_password

  def encrypt_password
  	# storing the specific password for the user
  	# this generates a random password salt using BCrypt
  	self.password_salt = BCrypt::Engine.generate_salt
  	# the password_salt and supplied password make up the password hash
  	self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
  end

  def self.authenticate(email,password)

  end


end
