class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string   :name
      t.integer  :runtime
      t.string   :image_url
      t.integer  :comedian_id

      t.timestamps null: false
    end
  end
end
