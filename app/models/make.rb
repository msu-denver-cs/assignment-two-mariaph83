class Make < ApplicationRecord
  has_many :cars, dependent: :destroy
end
