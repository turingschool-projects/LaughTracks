class CreateSpecialsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :name
      t.integer :special_id
      t.timestamps null:false
    end
  end
end
