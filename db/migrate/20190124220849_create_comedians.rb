class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text :name
      t.integer :age
      t.text :born
      t.boolean :deceased, default: false

      t.timestamps null:false
    end
  end
end
