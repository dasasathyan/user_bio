class Message < ApplicationRecord
    before_save :validate_message

    def validate_message
    end
end
