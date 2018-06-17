require 'bcrypt'

class User < ApplicationRecord


	validates :email, :name, :username, :password, :presence => true

  	validates :email, :username, uniqueness: { case_sensitive: false }

  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	validates :email, format: { with: VALID_EMAIL_REGEX }

	validates :password, :confirmation => true,
                         :length => {:within => 6..40}
    has_secure_password
end
