class Animal < ApplicationRecord
  has_many :favorite_animals, dependent: :destroy
  has_many :users, through: :favorite_animals

  has_many :save_animals, dependent: :destroy
  has_many :users, through: :save_animals

  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  has_many :adopts, dependent: :destroy
  has_many :users, through: :adopts
end
