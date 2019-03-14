class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.integer :comedian_id
      t.text    :name
      t.integer :age
      t.text :city
      

      t.timestamps
    end
  end
end
