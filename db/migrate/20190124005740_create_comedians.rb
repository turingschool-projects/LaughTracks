class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.name  :name
      t.age   :length
      t.city  :city
    end
  end
end
