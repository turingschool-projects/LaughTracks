class AddSpecialTimestamps < ActiveRecord::Migration[5.2]
  def change
    add_timestamps(:specials)
  end
end
