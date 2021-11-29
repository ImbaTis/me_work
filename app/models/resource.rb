class Resource < ApplicationRecord
  has_many :favorites, as: :record
end
