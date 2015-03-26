class AddFirstnameAndLastnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :admin, :boolean, default: false
    add_index :users, :admin
  end
end
