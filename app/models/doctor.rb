class Doctor < ApplicationRecord
  belongs_to :user
  validates :name, :specialty, :hospital, :location, :user_id, presence: true
end
