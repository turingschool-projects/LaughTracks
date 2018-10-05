class CreateComedians < ActiveRecord::Migration[5.2]
  def change
   create_table :comedians do |t|
     t.text  :name
     t.integer  :birthdate
     t.text  :city

     t.timestamps
   end
  end
end
