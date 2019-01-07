class Sound < ApplicationRecord
    has_many :user_sounds
    has_many :users, through: :user_sounds
end
