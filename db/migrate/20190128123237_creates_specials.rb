class CreatesSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :name
      t.text :year

      t.timestamps null:false
    end
  end
end
