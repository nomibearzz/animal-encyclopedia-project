class Animal < ApplicationRecord
  has_many :favorite_animals
  has_many :users, through: :favorite_animals

  has_many :save_animals
  has_many :users, through: :save_animals

  has_many :comments
  has_many :users, through: :comments
end
