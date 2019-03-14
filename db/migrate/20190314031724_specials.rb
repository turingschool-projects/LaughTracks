class Specials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text    :title
      t.integer :length
      t.text    :image_url

      t.timestamps
    end 
  end
end
