class AddImageSourceToSpecialsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :specials, :image_source, :string 
  end
end
