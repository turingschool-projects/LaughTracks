class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text    :firstname
      t.text    :lastname
      t.text    :city

      t.integer :age
    end
  end
end
