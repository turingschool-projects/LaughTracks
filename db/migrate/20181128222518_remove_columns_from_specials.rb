class RemoveColumnsFromSpecials < ActiveRecord::Migration[5.2]
  def change
    remove_column :specials, :comedian_name
  end
end
