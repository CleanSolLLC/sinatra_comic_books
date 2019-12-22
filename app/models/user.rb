class EmailValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << "cannot be blank or is not in a valid format"
    end
  end
end

class User < ActiveRecord::Base
	has_secure_password
	validates :username, :password, presence: true
	validates :email, email: true
	has_many :comics
end