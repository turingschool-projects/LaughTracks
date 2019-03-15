class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text    :name
      t.integer :runtime_mins
      t.integer :comedian_id
      t.text :image_url

      t.timestamps
    end
  end
end
