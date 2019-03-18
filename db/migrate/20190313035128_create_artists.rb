class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.text :name
      t.integer :formation_year
      t.text :origin
      t.integer :album_count
    end
  end
end
