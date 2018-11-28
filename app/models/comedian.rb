class Comedian < ActiveRecord::Base
  def change
    create_table :comedians do |t|
      t.text :name
      t.integer :age
      t.text :city

      t.timestamps
    end
  end
end
