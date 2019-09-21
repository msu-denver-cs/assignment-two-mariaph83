class Car < ApplicationRecord
  belongs_to :make
  belongs_to :factory
  has_many :parts, through: :factory

end
