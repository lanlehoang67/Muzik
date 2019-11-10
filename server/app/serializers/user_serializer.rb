class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :full_name, :created_at
end