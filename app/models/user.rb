class User < ApplicationRecord
  has_many :favorite_animals, dependent: :destroy
  has_many :animals, through: :favorite_animals

  has_many :save_animals, dependent: :destroy
  has_many :animals, through: :save_animals

  has_many :comments, dependent: :destroy
  has_many :animals, through: :comments
end
