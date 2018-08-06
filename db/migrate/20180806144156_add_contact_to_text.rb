class AddContactToText < ActiveRecord::Migration[5.2]
  def change
    add_column :texts, :contact, :string
    add_index :texts, :contact
  end
end
