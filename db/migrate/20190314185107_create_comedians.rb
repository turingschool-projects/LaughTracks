class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |comedian|
        comedian.text :name
        comedian.integer :age
        comedian.text :city

        comedian.timestamps
    end
  end
end
