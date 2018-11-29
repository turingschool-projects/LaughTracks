class CreateComposers < ActiveRecord::Migration[5.2]
  def change
    create_table :composers do |t|
      t.text :surname
      t.text :forename
      t.text :city
      t.integer :dob
      t.integer :dod
      t.integer :age

      t.timestamps null: false
    end
  end
end
