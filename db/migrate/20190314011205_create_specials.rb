class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.integer   :comedian_id
      t.text      :name
      t.integer   :runtime
      t.text      :thumbnail_link

      t.timestamps
    end
  end
end
