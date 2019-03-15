class AddComedianImageRuntimeToSpecials < ActiveRecord::Migration[5.2]
  def change
    add_column :specials, :runtime_mins, :integer
    add_column :specials, :comedian_id, :integer
    add_column :specials, :image_url, :text
  end
end
