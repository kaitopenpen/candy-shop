class Sweet < ApplicationRecord
  has_many :evaluations
  validates :name,  presence: true
end
