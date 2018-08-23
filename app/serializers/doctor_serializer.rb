# frozen_string_literal: true

class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :name, :specialty, :hospital, :location, :patients, :user_id

  def patients
    object.patients.pluck(:id)
  end
end
