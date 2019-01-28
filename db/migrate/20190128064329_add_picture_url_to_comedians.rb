class AddPictureUrlToComedians < ActiveRecord::Migration[5.2]
  def change
    add_column :comedians, :picture_url, :text
  end
end
