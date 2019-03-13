class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
     t.text    :name
     t.integer :age
     t.text   :home_town
     t.text   :photo

     t.timestamps
   end
  end
end
