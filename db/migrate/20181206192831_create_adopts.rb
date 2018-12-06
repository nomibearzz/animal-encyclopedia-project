class CreateAdopts < ActiveRecord::Migration[5.2]
  def change
    create_table :adopts do |t|
      t.string :nickname
      t.decimal :fee
      t.references :user, foreign_key: true
      t.references :animal, foreign_key: true

      t.timestamps
    end
  end
end
