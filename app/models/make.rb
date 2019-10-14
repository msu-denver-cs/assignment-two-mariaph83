class Make < ApplicationRecord
  has_many :cars, dependent: :destroy

  validates :name, presence: true, format: { with: /\A[a-zA-z]+\z/, message: "should be only letters" }
  validates :country, presence: true, format: { with: /\A[a-zA-z]+\z/, message: "should be only letters" }

end
