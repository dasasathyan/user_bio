class AddUserToUserBio < ActiveRecord::Migration[5.2]
  def change
    add_column :user_bios, :user_id, :string
  end
end
