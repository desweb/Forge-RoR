class Project < ActiveRecord::Base
	resourcify
	attr_accessible :description, :state, :title
end
