class Car < ApplicationRecord
  belongs_to :make
  has_many :factories
  has_many :parts, through: :factories, dependent: :destroy

  validates_associated :parts
  validates :name, presence: true, format: { with: /\A[a-zA-z]+\z/, message: "should be only letters" }
  validates :make, presence: true
  validates :model, presence: true, format: { with: /\A[a-zA-z]+\z/, message: "should be only letters" }
  validates :vin, length: { minimum: 6 , message: 'should be at least 6 digits'}, numericality: { only_integer: true, message: 'can only be number' }
end