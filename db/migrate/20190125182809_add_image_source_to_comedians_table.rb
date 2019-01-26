class AddImageSourceToComediansTable < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :image_source, :string
  end
end
