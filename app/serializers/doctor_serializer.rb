class DoctorSerializer < ActiveModel::Serializer
  has_one :user
  attributes :id, :name, :specialty, :hospital, :location
end
