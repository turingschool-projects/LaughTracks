class Specials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :name
      t.integer :runtime
      t.integer :comedian_id
    end
  end
end
