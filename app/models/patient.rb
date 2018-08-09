# frozen_string_literal: true

class Patient < ApplicationRecord
  belongs_to :doctor
  validates :name, :age, :weight, :glucose,
            :test, :date, :doctor_id, presence: true
end
