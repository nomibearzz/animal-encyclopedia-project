class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :animal


  validates :comment, presence: true, length: {minimum: 5, maximum: 300}
end
