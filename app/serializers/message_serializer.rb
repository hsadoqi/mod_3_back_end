class MessageSerializer < ActiveModel::Serializer
  attributes :user_id, :channel_id, :speech, :translation
  has_one :user 
  has_one :channel
end
