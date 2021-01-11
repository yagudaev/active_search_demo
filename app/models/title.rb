class Title < ApplicationRecord
  has_many :appearances, inverse_of: :title, dependent: :destroy
  has_many :participants, through: :appearances

  has_many :appearances_by_directors, -> { where(role: :director) }, class_name: 'Appearance', inverse_of: :title
  has_many :directors, through: :appearances_by_directors, class_name: 'Participant', source: :participant

  has_many :appearances_by_actors, -> { where(role: :actor) }, class_name: 'Appearance', inverse_of: :title
  has_many :actors, through: :appearances_by_actors, class_name: 'Participant', source: :participant
end
