class Question < ApplicationRecord
    has_many :options

    validates_presence_of :question, :question_type, :status
end