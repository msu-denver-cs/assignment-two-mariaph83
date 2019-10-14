class Part < ApplicationRecord
  has_many :factories
  has_many :cars, through: :factories, dependent: :destroy

  validates :name, presence: true, format: { with: /\A[a-zA-z]+\z/, message: "should be only letters" }
  validates :count, presence: true, numericality: { only_integer: true , message: "should be only numbers" }

end
