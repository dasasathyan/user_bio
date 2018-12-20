class CreateOdwUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :odw_users do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
