class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.text :name
      t.text :type
      t.integer :year
      t.text :award

      t.timestamp
    end
  end
end
