class MembershipInquiry < ApplicationRecord
    belongs_to :question

    def title
        return answer
    end
end
