class AddAgeToComedians < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :age, :integer
  end
end
