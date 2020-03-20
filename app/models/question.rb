class Question < ApplicationRecord
  validates :text, presence: true
  belongs_to :groups
  belongs_to :users
  has_many :ansers
end
