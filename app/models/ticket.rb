class Ticket < ActiveRecord::Base
	resourcify
  attr_accessible :title, :description, :percent, :project_id, :ticket_state_id, :ticket_type_id, :ticket_priority_id, :user_id
  
  belongs_to :ticket_priority
  belongs_to :ticket_state
  belongs_to :ticket_type

  belongs_to :project
  belongs_to :user
end
