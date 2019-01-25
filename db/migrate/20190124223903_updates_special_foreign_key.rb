class UpdatesSpecialForeignKey < ActiveRecord::Migration[5.2]
  def change
    rename_column :specials, :comedianId, :comedian_id
  end
end
