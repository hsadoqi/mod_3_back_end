class ChannelSerializer < ActiveModel::Serializer
  attributes :id, :name, :lang
  has_many :messages, serializer: MessageSerializer 
  has_many :users, serializer: UserSerializer
end
