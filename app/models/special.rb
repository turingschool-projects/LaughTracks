class Special < ActiveRecord::Base
  def change
    create_table :specials do |t|
      t.text :title
      t.integer :year
      t.integer :runtime
      t.text :image

      t.timestamps
    end
  end
end
