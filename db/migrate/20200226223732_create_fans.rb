class CreateFans < ActiveRecord::Migration[5.1]
  def change
    create_table :fans do |t|
      t.integer :fan_id
      t.integer :photo_id

      t.timestamps
    end
  end
end
