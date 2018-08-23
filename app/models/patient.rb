# frozen_string_literal: true

class Patient < ApplicationRecord
  belongs_to :doctor
  validates :name, :age, :weight, :glucose, :test, presence: true
end
