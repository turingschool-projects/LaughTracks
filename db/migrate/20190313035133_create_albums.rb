class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.text :name
      t.date :release_date
      t.integer :track_count
      t.text :duration
      t.integer :artist_id
    end
  end
end
