class CreateUserBios < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bios do |t|
      t.text :bio
      t.text :goal
      t.text :email
      t.text :name
      t.timestamps
    end
  end
end
