class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.integer :ticket_states_id
      t.integer :type
      t.integer :priority
      t.integer :percent
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
