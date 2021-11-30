class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :record, polymorphic: true

  validates :user_id, uniqueness: { scope: [:record_type, :record_id] }
end
