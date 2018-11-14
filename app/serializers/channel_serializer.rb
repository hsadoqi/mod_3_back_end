class ChannelSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :messages, serializer: MessageSerializer 
  has_many :users, serializer: UserSerializer
end
