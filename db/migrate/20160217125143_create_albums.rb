class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :artist_id
      t.text :songs
      t.string :picture
      t.text :musicVideo

      t.timestamps
    end
  end
end
