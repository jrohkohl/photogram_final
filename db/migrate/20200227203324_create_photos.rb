class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :owner_id
      t.string :image
      t.integer :likes_count
      t.string :comments_count

      t.timestamps
    end
  end
end
