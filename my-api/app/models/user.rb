class User < ApplicationRecord
    has_many :user_sounds
    has_many :sounds, through: :user_sounds
end
