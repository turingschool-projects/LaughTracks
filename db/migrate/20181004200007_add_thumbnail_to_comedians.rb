class AddThumbnailToComedians < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :thumbnail, :text
  end
end
