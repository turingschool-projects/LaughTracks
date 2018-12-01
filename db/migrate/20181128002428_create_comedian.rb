class CreateComedian < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text :name
      t.text :city
      t.integer :age

      t.timestamps
    end
  end
end
