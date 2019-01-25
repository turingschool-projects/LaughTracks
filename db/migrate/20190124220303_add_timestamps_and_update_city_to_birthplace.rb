class AddTimestampsAndUpdateCityToBirthplace < ActiveRecord::Migration[5.2]
  def change
    change_table(:comedians) {|t| t.timestamps}
    rename_column :comedians, :city, :birthplace
    add_column :comedians, :headshot, :text
  end
end
