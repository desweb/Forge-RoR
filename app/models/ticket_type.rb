class TicketType < ActiveRecord::Base
  attr_accessible :name
  
  has_many :tickets
end
