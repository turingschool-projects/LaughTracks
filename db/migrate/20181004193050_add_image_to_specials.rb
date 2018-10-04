class AddImageToSpecials < ActiveRecord::Migration[5.2]
  def change
    add_column :specials, :thumbnail, :string
  end
end
