class Car < ApplicationRecord
  belongs_to :make
  has_many :factories
  has_many :parts, :through => :factories, dependent: :destroy

end
