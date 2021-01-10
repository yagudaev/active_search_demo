class Appearance < ApplicationRecord
  belongs_to :participant
  belongs_to :title

  enum role: { director: 0, actor: 1 }
end
