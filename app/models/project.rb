class Project < ActiveRecord::Base
	resourcify
	attr_accessible :description, :state, :title
  
  validates_presence_of :description
  validates_presence_of :state
  validates_presence_of :title
  
  has_many :tickets
end
