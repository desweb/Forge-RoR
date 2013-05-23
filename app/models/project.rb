class Project < ActiveRecord::Base
	resourcify
	attr_accessible :description, :state, :title
  
  has_many :tickets
end
