class AddScientificNameToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :scientific_name, :string
  end
end
