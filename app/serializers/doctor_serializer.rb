# frozen_string_literal: true

class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :name, :specialty, :hospital, :location, :user_id
end
