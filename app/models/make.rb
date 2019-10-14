class Make < ApplicationRecord
  has_many :cars, dependent: :destroy

  validates :name, uniqueness: true
end
