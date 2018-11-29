class AddComposerPhotos < ActiveRecord::Migration[5.2]
  def change

    add_column :composers, :thumbnail, :text

  end
end
