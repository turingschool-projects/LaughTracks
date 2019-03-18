class AddImageColumnToComedian < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :image, :text
  end
end
