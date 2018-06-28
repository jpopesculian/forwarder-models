class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :guid
      t.string :twilio_id
      t.timestamp :received_time
      t.timestamp :sent_time
      t.string :from
      t.string :to
      t.text :body

      t.timestamps
    end
  end
end
