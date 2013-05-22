class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type, :integer
    add_column :users, :state, :integer
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
  end
end
