class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.integer :comedian_id
      t.text    :title
      t.integer :run_time
      t.text :thumbnail_url

      t.timestamps
    end
  end
end
