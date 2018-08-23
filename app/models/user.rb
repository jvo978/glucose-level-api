# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :doctors
  has_many :patients, through: :doctors
end
