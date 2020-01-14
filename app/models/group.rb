class Group < ApplicationRecord
  has_many :ansers
  has_many :questions
  has_many :group_users
  has_many :users, through: :group_users
end
