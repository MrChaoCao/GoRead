class AddEmailToUsersTable < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :string, null: false
  end
end
