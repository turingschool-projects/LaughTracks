class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string  :name
      t.date    :release_date
      t.integer :runtime_length
      t.integer :comedian_id
      t.string  :image_url

      t.timestamps
    end

  end
end
