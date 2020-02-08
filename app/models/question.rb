class Question < ApplicationRecord
  belongs_to :groups
  belongs_to :users
  has_many :ansers
end
