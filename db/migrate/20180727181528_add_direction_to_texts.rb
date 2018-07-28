class AddDirectionToTexts < ActiveRecord::Migration[5.2]
  def change
    add_column :texts, :direction, :string
  end
end
