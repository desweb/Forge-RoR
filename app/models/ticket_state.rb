class TicketState < ActiveRecord::Base
	resourcify
  attr_accessible :name
  
  has_many :tickets
end
