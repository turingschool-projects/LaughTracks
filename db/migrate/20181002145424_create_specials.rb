class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :name
      t.integer :comedian_id
    end
  end
end
