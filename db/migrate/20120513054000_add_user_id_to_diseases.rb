class AddUserIdToDiseases < ActiveRecord::Migration
  def change
    add_column :diseases, :user_id, :integer
  end
end
