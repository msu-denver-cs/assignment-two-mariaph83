class Car < ApplicationRecord
  belongs_to :make
  has_many :factories
  has_many :parts, :through => :factories, dependent: :destroy

  validates_associated :parts
  validates :make, presence: true
  validates :name, uniqueness: true
  validates :vin, length: { minimum: 6 }, numericality: { only_integer: true }
end