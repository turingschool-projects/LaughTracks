class AddRuntimeAndThumbnailsToSpecials < ActiveRecord::Migration[5.2]
  def change
    add_column :specials, :runtime, :integer
    add_column :specials, :thumbnail, :text
  end
end
