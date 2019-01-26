class CreateComediansTable < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.string      :name
      t.integer     :comedian_id
      t.timestamps null:false
    end
  end
end
