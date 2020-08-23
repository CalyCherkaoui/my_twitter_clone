class AddUserIdToGossips < ActiveRecord::Migration[6.0]
  def change
    add_column :gossips, :user_id, :integer
  end
end
