class ChangeSpecialNameToTitle < ActiveRecord::Migration[5.2]
  def change
    remove_column :specials, :name, :text
    add_column :specials, :title, :text
  end
end
