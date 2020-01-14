class Question < ApplicationRecord
  has_many :ansers
  belongs_to :group
end
