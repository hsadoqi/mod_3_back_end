class CreateSpeeches < ActiveRecord::Migration[5.2]
  def change
    create_table :speeches do |t|
      t.string :input 
      t.string :translation
      t.references :user

      t.timestamps
    end
  end
end
