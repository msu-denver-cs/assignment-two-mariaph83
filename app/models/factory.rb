class Factory < ApplicationRecord
  belongs_to :car, optional: true
  belongs_to :part, optional: true
end
