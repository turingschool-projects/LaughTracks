class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :title
      t.integer :runtime
      t.integer :year

      t.integer :comedian_id
    end
  end
end
