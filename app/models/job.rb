class Job < ApplicationRecord
  has_many :favorites, as: :record
  has_many :users, through: :favorites
end
