class User < ApplicationRecord
  has_many :favorite_animals, dependent: :destroy
  has_many :animals, through: :favorite_animals

  has_many :save_animals, dependent: :destroy
  has_many :animals, through: :save_animals

  has_many :comments, dependent: :destroy
  has_many :animals, through: :comments

  has_many :adopts, dependent: :destroy
  has_many :animals, through: :adopts

  validates :username, :email, uniqueness: true
  validates_presence_of :username, :email, :first_name

  # def password=(password)
  #   self.password_digest = BCrypt::Password.create(password)
  # end


  after_commit :assign_customer_id, on: :create

  def assign_customer_id
    customer = Stripe::Customer.create(email: email)
    self.customer_id = customer.id
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  has_secure_password
end
