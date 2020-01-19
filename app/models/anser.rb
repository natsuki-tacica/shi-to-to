class Anser < ApplicationRecord
  belongs_to :user
  belongs_to :question

  # belongs_to :group
  # belongs_to :question
  # validates :anser, presence: true
end
