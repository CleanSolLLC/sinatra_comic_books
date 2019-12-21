class User < ActiveRecord::Base
	has_secure_password
	validates :username, :email, :password, presence: true
	has_many :comics
end