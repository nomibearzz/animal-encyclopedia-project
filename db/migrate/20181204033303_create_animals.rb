class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :description
      t.string :scientic_name
      t.string :family_name
      t.string :classification
      t.string :diet
      t.string :life_span
      t.string :habitat

      t.timestamps
    end
  end
end
