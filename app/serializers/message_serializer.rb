class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :channel_id, :speech, :translation, :created_at, :username
  belongs_to :user 
  belongs_to :channel
end
