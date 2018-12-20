class UserBio < ApplicationRecord
    def validate_message
    end
    belongs_to :user
end
