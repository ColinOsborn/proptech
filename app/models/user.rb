class User < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates_length_of :name, minimum: 3, maximum: 25, message: "Name must be between 3 to 25 characters"
  validates :email, presence: true
  validates :phone_number, presence: true

  # Associations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def first_name
    name.split.first
  end

  def last_name
    name.split.last
  end
end
