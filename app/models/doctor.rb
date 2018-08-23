# frozen_string_literal: true

class Doctor < ApplicationRecord
  belongs_to :user
  has_many :patients, dependent: :destroy
  validates :name, :specialty, :hospital, :location, :user, presence: true
end
