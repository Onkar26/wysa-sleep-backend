class Option < ApplicationRecord
    belongs_to :question

    validates_presence_of :question_id, :option
end