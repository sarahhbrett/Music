class AddReviewToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :review, :text
  end
end
