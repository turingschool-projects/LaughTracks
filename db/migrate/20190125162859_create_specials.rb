class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :special_name
      t.integer :length
      t.text :image_location

      t.timestamps null: false
    end
  end
end
