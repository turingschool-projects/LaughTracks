class CreateSpecial < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :name

      t.timestamps
    end
  end
end
