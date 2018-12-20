class AddGoalBioToUserBios < ActiveRecord::Migration[5.2]
  def change
    add_column :user_bios, :bio, :string
    add_column :user_bios, :goal, :string
  end
end
