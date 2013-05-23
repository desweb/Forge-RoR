class RenameTicketState < ActiveRecord::Migration
  def change
    rename_column :tickets, :ticket_states_id, :ticket_state_id
  end
end
