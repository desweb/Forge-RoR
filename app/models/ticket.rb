class Ticket < ActiveRecord::Base
  attr_accessible :description, :percent, :priority, :project_id, :ticket_states_id, :title, :type, :user_id
end