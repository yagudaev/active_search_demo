class Title < ApplicationRecord
  has_many :appearances
  has_many :participants, through: :appearances
  has_many :directors_apperances, -> { where(role: :director) }, class_name: 'Appearance'
  has_many :directors, through: :directors_apperances, class_name: 'Participant', source: :participant
end
