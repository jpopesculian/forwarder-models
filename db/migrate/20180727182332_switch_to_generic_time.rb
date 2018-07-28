class SwitchToGenericTime < ActiveRecord::Migration[5.2]
  def up
    add_column :texts, :time, :datetime
    remove_column :texts, :sent_time
    remove_column :texts, :received_time
  end

  def down
    remove_column :texts, :time
    add_column :texts, :sent_time, :datetime
    add_column :texts, :received_time, :datetime
  end
end
