class AddImageColumnToComedians < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :image, :string
  end
end
