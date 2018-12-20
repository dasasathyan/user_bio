class AddNameEmailIdToUserBios < ActiveRecord::Migration[5.2]
  def change
    add_column :user_bios, :emailid, :string
    add_column :user_bios, :name, :string
  end
end
