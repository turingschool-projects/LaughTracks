class CreateSymphonies < ActiveRecord::Migration[5.2]
  def change
    create_table :symphonies do |t|
      t.text :name
      t.text :key
      t.text :opus
      t.text :moniker
      t.integer :year
      t.integer :composer_id

      t.timestamps null: false
    end
  end
end
