class Comic < ActiveRecord::Base
	belongs_to :user
	validates :publisher, :year, :issue_num, :cover_price, :title, :subtitle, 
	:condition, presence: true
end