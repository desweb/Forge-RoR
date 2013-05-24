class Ticket < ActiveRecord::Base
	resourcify
  attr_accessible :title, :description, :percent, :project_id, :ticket_state_id, :ticket_type_id, :ticket_priority_id, :user_id
  
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :percent
  validates_presence_of :project_id
  validates_presence_of :ticket_state_id
  validates_presence_of :ticket_type_id
  validates_presence_of :ticket_priority_id
  validates_presence_of :user_id
  
  belongs_to :ticket_priority
  belongs_to :ticket_state
  belongs_to :ticket_type

  belongs_to :project
  belongs_to :user

  def as_json(options={})
    super.merge(
        :project => project,
        :user => user,
        :ticket_priority => ticket_priority,
        :ticket_state => ticket_state,
        :ticket_type => ticket_type
    )
  end
end
