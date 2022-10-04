class Api::V4::UsersSerializer < ActiveModel::Serializer
  attributes :id, :email, :mobile
end
