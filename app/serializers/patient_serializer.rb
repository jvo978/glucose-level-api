# frozen_string_literal: true

class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :weight, :glucose, :test, :date, :doctor

  def doctor
    object.doctor.id
  end
end
