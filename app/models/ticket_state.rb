class TicketState < ActiveRecord::Base
	resourcify
  attr_accessible :name
  
  validates_presence_of :name

  has_many :tickets
end
