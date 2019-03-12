class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text    :name
      t.integer :length
      t.text :thumbnail
      t.references :comedian
    end
  end
end
