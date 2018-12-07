class RemoveFeeFromAdopts < ActiveRecord::Migration[5.2]
  def change
    remove_column :adopts, :fee, :decimal
  end
end
