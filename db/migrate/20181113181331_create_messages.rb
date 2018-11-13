class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :speech 
      t.string :translation
      t.string :username 
      t.integer :channel_id

      t.timestamps
    end
  end
end
