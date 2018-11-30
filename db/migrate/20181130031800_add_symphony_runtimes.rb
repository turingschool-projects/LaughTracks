class AddSymphonyRuntimes < ActiveRecord::Migration[5.2]
  def change

    add_column :symphonies, :runtime, :integer

  end
end
