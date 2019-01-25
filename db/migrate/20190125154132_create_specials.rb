class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |s|
      s.text :name
      s.integer :comedian_id
    end
  end
end
