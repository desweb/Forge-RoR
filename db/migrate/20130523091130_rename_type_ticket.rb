class RenameTypeTicket < ActiveRecord::Migration
  def change
    rename_column :tickets, :type, :ticket_type_id
  end
end
