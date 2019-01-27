class AddThumnbailUrlToComediansTable < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :image_url, :text
  end
end
