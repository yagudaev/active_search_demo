class Title < ApplicationRecord
  has_many :appearances
  has_many :directors, -> { where(role)}, through: :appearances, class:
end
