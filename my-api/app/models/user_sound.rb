class UserSound < ApplicationRecord
    belongs_to :user
    belongs_to :sound
end
