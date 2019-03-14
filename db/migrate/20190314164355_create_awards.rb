class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.integer :bourbon_id
      t.text :name
      t.text :award_type
      t.integer :year
      t.text :image

      t.timestamp
    end
  end
end
