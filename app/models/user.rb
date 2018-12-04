class User < ApplicationRecord
  has_many :favorite_animals
  has_many :animals, through: :favorite_animals

  has_many :save_animals
  has_many :animals, through: :save_animals

  has_many :comments
  has_many :animals, though: :comments
end
