class FavoriteAnimal < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  validates_uniqueness_of :user_id
end
