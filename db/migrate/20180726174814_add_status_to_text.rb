class AddStatusToText < ActiveRecord::Migration[5.2]
  def change
    add_column :texts, :status, :string
  end
end
