class Part < ApplicationRecord
  belongs_to :factory
  has_many :cars, :through => :factory
end
