class AddForeignKeyToSpecials < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :specials, :comedians
  end
end
