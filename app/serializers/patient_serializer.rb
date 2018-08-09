# frozen_string_literal: true

class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :weight, :glucose, :test, :date, :doctor_id
end
