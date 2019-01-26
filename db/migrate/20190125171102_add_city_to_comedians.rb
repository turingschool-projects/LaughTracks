class AddCityToComedians < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :city, :string
  end
end
