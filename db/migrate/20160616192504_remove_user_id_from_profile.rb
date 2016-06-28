class RemoveUserIdFromProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :User_id, :integer
  end
end
