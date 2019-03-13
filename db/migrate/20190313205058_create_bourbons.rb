class CreateBourbons < ActiveRecord::Migration[5.2]
  def change
    create_table :bourbons do |t|
      t.text :name
      t.text :distillery
      t.text :location
      t.text :description
      t.float :proof
      t.integer :expert_score
      t.float :avg_rating
      t.text :bottle_image

      t.timestamp
    end
  end
end
