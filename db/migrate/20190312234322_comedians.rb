class Comedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text    :name
      t.integer :age
      t.text    :city
      t.text    :head_shot

      t.timestamps
    end 
  end
end
