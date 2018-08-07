class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :name, :specialty, :hospital, :location, :user_id
end
