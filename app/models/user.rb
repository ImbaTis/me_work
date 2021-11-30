class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites
  has_many :favorited_jobs, through: :favorites, source: :record, source_type: 'Job'
  has_many :favorited_resources, through: :favorites, source: :record, source_type: 'Resource'
end
