class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :name
      t.integer :runtime
      t.text :image

      t.timestamps
    end
  end
end
