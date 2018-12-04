class RemoveScienticNameFromAnimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :animals, :scientic_name, :string
  end
end
