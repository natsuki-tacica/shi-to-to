class Question < ApplicationRecord
  # has_many :ansers
  # belongs_to :group
  belongs_to :surveys
  has_many :answers
end
