class Question < ApplicationRecord
    has_many :membership_inquiries
    def name
        return question
    end
end
