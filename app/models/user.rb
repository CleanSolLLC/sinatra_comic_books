class EmailValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << "is not a valid format"
    end
  end
end

class User < ActiveRecord::Base
	has_secure_password
	has_many :comics
	validates :username, :password, presence: true
	validates :email, presence: true, email: true
	
end