class TicketPriority < ActiveRecord::Base
  attr_accessible :name
  
  has_many :tickets
end
