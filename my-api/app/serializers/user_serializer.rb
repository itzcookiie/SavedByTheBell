class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :sounds
  has_many :sounds
  class SoundSerializer < ActiveModel::Serializer
    attributes :title, :description, :audio_url, :image
  end
end
