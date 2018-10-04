class AddThumbnailToSpecials < ActiveRecord::Migration[5.2]
  def change
    add_column :specials, :thumbnail, :text
  end
end
