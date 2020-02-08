class Anser < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  belongs_to :question
end
