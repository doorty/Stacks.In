class Stack < ActiveRecord::Base
	attr_accessible :title
	
	belongs_to :user
	has_many :contents
end
