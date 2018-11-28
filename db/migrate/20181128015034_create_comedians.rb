class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |table|
      table.text     :name
      table.integer  :age
      table.text :hometown

      table.timestamps null: false
    end
  end
end
