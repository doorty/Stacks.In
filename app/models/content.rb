class Content < ActiveRecord::Base
	attr_accessible :description, :url, :source
	
	belongs_to :stack	
end
