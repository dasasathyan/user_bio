class AddNmsgToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :nmessage, :string
  end
end
