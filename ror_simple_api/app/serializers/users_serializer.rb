class UsersSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :first_name, :last_name
end
