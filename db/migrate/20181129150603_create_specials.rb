class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :name
    end
  end
end
