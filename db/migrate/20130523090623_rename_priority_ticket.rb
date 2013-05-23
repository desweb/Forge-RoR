class RenamePriorityTicket < ActiveRecord::Migration
  def change
    rename_column :tickets, :priority, :ticket_priority_id
  end
end
