class RenameUserBiosColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_bios, :emailid, :email
    end
end
