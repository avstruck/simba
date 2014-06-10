class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :image_url
      t.integer :artist_id
      t.string :title
      t.string :genre
      t.float :original_value
      t.integer :art_owner_id
      t.integer :copyright_owner_id
      t.integer :number_prints
      t.text :art_description
      t.string :ownership_type

      t.timestamps
    end
  end
end
