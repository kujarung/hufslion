class Qnareply < ActiveRecord::Base
    belongs_to :user, required: false
    belongs_to :qna, required: false
end
